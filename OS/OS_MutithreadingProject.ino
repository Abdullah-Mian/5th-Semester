#include <Arduino.h>

// Motor control pins for L298N
const int IN1 = 26; // Motor 1 forward
const int IN2 = 25; // Motor 1 backward
const int IN3 = 33; // Motor 2 forward
const int IN4 = 32; // Motor 2 backward

// Ultrasonic sensor pins
const int trigLeft = 14;   // Left sensor Trigger pin
const int echoLeft = 34;   // Left sensor Echo pin
const int trigCenter = 13; // Center sensor Trigger pin
const int echoCenter = 12; // Center sensor Echo pin
const int trigRight = 27;  // Right sensor Trigger pin
const int echoRight = 35;  // Right sensor Echo pin

// PWM configurations
const int pwmChannel1 = 0;   // PWM channel for IN1
const int pwmChannel2 = 1;   // PWM channel for IN2
const int pwmChannel3 = 2;   // PWM channel for IN3
const int pwmChannel4 = 3;   // PWM channel for IN4
const int pwmFreq = 5000;    // PWM frequency (Hz)
const int pwmResolution = 8; // PWM resolution (8-bit: 0-255)

// Shared variables
volatile int directionCommand = 0; // Command to control direction
SemaphoreHandle_t xSemaphore;      // Semaphore for thread safety
int lastCommand = -99;             // Tracks the last executed command

// Function to set motor speed
void setMotorSpeed(int channel, int dutyCycle)
{
  ledcWrite(channel, dutyCycle); // Set PWM duty cycle (0-255)
}

// Function to read ultrasonic distance
long readUltrasonicDistance(int trigPin, int echoPin)
{
  digitalWrite(trigPin, LOW);
  delayMicroseconds(2);
  digitalWrite(trigPin, HIGH);
  delayMicroseconds(10);
  digitalWrite(trigPin, LOW);
  long duration = pulseIn(echoPin, HIGH, 30000); // 30ms timeout to avoid hanging
  if (duration == 0)
  {
    return 400; // Return a large distance if no echo
  }
  return (duration / 2) * 0.0343; // Distance in cm
}

// Motor control functions
void forward()
{
  setMotorSpeed(pwmChannel1, 0);   // IN1 OFF
  setMotorSpeed(pwmChannel2, 128); // IN2 Half speed
  setMotorSpeed(pwmChannel3, 128); // IN3 Half speed
  setMotorSpeed(pwmChannel4, 0);   // IN4 OFF
}

void reverse()
{
  setMotorSpeed(pwmChannel1, 128); // IN1 Half speed
  setMotorSpeed(pwmChannel2, 0);   // IN2 OFF
  setMotorSpeed(pwmChannel3, 0);   // IN3 OFF
  setMotorSpeed(pwmChannel4, 128); // IN4 Half speed
}

void left()
{
  setMotorSpeed(pwmChannel1, 0);   // IN1 OFF
  setMotorSpeed(pwmChannel2, 128); // IN2 Half speed
  setMotorSpeed(pwmChannel3, 0);   // IN3 OFF
  setMotorSpeed(pwmChannel4, 128); // IN4 Half speed
}

void right()
{
  setMotorSpeed(pwmChannel1, 128); // IN1 Half speed
  setMotorSpeed(pwmChannel2, 0);   // IN2 OFF
  setMotorSpeed(pwmChannel3, 128); // IN3 Half speed
  setMotorSpeed(pwmChannel4, 0);   // IN4 OFF
}

void stopMotors()
{
  setMotorSpeed(pwmChannel1, 0); // Stop all motors
  setMotorSpeed(pwmChannel2, 0);
  setMotorSpeed(pwmChannel3, 0);
  setMotorSpeed(pwmChannel4, 0);
}

// Sensor task
void sensorTask(void *parameter)
{
  while (true)
  {
    long distanceLeft = readUltrasonicDistance(trigLeft, echoLeft);
    long distanceCenter = readUltrasonicDistance(trigCenter, echoCenter);
    long distanceRight = readUltrasonicDistance(trigRight, echoRight);

    Serial.print("Left: ");
    Serial.print(distanceLeft);
    Serial.print(" cm | Center: ");
    Serial.print(distanceCenter);
    Serial.print(" cm | Right: ");
    Serial.println(distanceRight);

    int command = 4; // Default to forward

    // Determine direction based on distances
    if (distanceCenter < 20 && distanceRight < 20 && distanceLeft < 20)
    {
      command = -1; // Reverse
    }
    else if (distanceCenter < 20 && distanceRight < 20)
    {
      command = 1; // Go left
    }
    else if (distanceCenter < 20 && distanceLeft < 20)
    {
      command = 2; // Go right
    }
    else if (distanceLeft < 20 && distanceRight < 20)
    {
      command = 3; // Go forward
    }
    else if (distanceCenter < 20)
    { // Only forward obstacle
      if (distanceLeft >= 1000)
      {
        command = 1; // Go left
      }
      else if (distanceRight >= 1000)
      {
        command = 2; // Go right
      }
      else
      {
        command = -1; // Reverse
      }
    }
    else if (distanceLeft < 20)
    { // Only left obstacle
      if (distanceCenter >= 1000)
      {
        command = 4; // Go forward
      }
      else if (distanceRight >= 1000)
      {
        command = 2; // Go right
      }
      else
      {
        command = -1; // Reverse
      }
    }
    else if (distanceRight < 20)
    { // Only right obstacle
      if (distanceCenter >= 1000)
      {
        command = 4; // Go forward
      }
      else if (distanceLeft >= 1000)
      {
        command = 1; // Go left
      }
      else
      {
        command = -1; // Reverse
      }
    }
    else
    {
      command = 4; // Move forward (default)
    }

    if (xSemaphoreTake(xSemaphore, portMAX_DELAY) == pdTRUE)
    {
      directionCommand = command;
      xSemaphoreGive(xSemaphore);
    }

    delay(100);
  }
}

// Movement task
void movementTask(void *parameter)
{
  while (true)
  {
    int command;

    if (xSemaphoreTake(xSemaphore, portMAX_DELAY) == pdTRUE)
    {
      command = directionCommand;
      xSemaphoreGive(xSemaphore);
    }

    if (command != lastCommand)
    {
      stopMotors();
      lastCommand = command;

      switch (command)
      {
      case -1:
        reverse();
        break;
      case 1:
        left();
        break;
      case 2:
        right();
        break;
      case 4:
        forward();
        break;
      default:
        forward();
        break;
      }
    }

    delay(50);
  }
}

void setup()
{
  Serial.begin(115200);

  // Initialize motor PWM channels
  ledcSetup(pwmChannel1, pwmFreq, pwmResolution);
  ledcAttachPin(IN1, pwmChannel1);
  ledcSetup(pwmChannel2, pwmFreq, pwmResolution);
  ledcAttachPin(IN2, pwmChannel2);
  ledcSetup(pwmChannel3, pwmFreq, pwmResolution);
  ledcAttachPin(IN3, pwmChannel3);
  ledcSetup(pwmChannel4, pwmFreq, pwmResolution);
  ledcAttachPin(IN4, pwmChannel4);

  // Initialize ultrasonic sensor pins
  pinMode(trigLeft, OUTPUT);
  pinMode(echoLeft, INPUT);
  pinMode(trigCenter, OUTPUT);
  pinMode(echoCenter, INPUT);
  pinMode(trigRight, OUTPUT);
  pinMode(echoRight, INPUT);

  // Create semaphore
  xSemaphore = xSemaphoreCreateMutex();

  // Create tasks
  xTaskCreatePinnedToCore(sensorTask, "Sensor Task", 2048, NULL, 1, NULL, 0);
  xTaskCreatePinnedToCore(movementTask, "Movement Task", 2048, NULL, 1, NULL, 1);

  Serial.println("System Initialized");
}

void loop()
{
  // Main loop intentionally left empty as tasks handle the logic
}
