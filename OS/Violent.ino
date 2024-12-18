#include <Arduino.h>

// Motor control pins for L298N
const int IN1 = 26;  // Motor 1 forward
const int IN2 = 25;  // Motor 1 backward
const int IN3 = 33;  // Motor 2 forward
const int IN4 = 32;  // Motor 2 backward

// Ultrasonic sensor pins
const int trigLeft = 14;    // Left sensor Trigger pin
const int echoLeft = 34;    // Left sensor Echo pin (input-only)
const int trigCenter = 13;  // Center sensor Trigger pin
const int echoCenter = 12;  // Center sensor Echo pin (input-only)
const int trigRight = 27;   // Right sensor Trigger pin
const int echoRight = 35;   // Right sensor Echo pin (input-only)

// Shared variables
volatile int directionCommand = 0;  // Command to control direction
SemaphoreHandle_t xSemaphore;
int lastCommand = 0;  // Tracks the last executed command

// Function to trigger ultrasonic sensor and measure distance
long readUltrasonicDistance(int trigPin, int echoPin) {
  digitalWrite(trigPin, LOW);
  delayMicroseconds(2);
  digitalWrite(trigPin, HIGH);
  delayMicroseconds(10);
  digitalWrite(trigPin, LOW);
  long duration = pulseIn(echoPin, HIGH);
  long distance = (duration / 2) * 0.0343;  // Distance in cm
  return distance;
}

// Task to handle sensor readings and determine direction
// Task to handle sensor readings and determine direction
void sensorTask(void *parameter) {
  while (true) {
    long distanceLeft = readUltrasonicDistance(trigLeft, echoLeft);
    long distanceCenter = readUltrasonicDistance(trigCenter, echoCenter);
    long distanceRight = readUltrasonicDistance(trigRight, echoRight);

    Serial.print("Left: ");
    Serial.print(distanceLeft);
    Serial.print(" cm | Center: ");
    Serial.print(distanceCenter);
    Serial.print(" cm | Right: ");
    Serial.println(distanceRight);

    int command = 0;  // Default is no change

    // Determine direction based on distances
    if (distanceCenter < 20 && distanceRight < 20 && distanceLeft < 20) {
      command = -1;  // Reverse
    } else if (distanceCenter < 20 && distanceRight < 20) {
      command = 1;  // Go left
    } else if (distanceCenter < 20 && distanceLeft < 20) {
      command = 2;  // Go right
    } else if (distanceLeft < 20 && distanceRight < 20) {
      command = 3;                     // Go forward
    } else if (distanceCenter < 20) {  // Only forward obstacle
      if (distanceLeft >= 1000) {
        command = 1;  // Go left
      } else if (distanceRight >= 1000) {
        command = 2;  // Go right
      } else {
        command = -1;  // Reverse
      }
    } else if (distanceLeft < 20) {  // Only left obstacle
      if (distanceCenter >= 1000) {
        command = 4;  // Go forward
      } else if (distanceRight >= 1000) {
        command = 2;  // Go right
      } else {
        command = -1;  // Reverse
      }
    } else if (distanceRight < 20) {  // Only right obstacle
      if (distanceCenter >= 1000) {
        command = 4;  // Go forward
      } else if (distanceLeft >= 1000) {
        command = 1;  // Go left
      } else {
        command = -1;  // Reverse
      }
    } else {
      command = 4;  // Move forward (default)
    }

    // Send command via interrupt-safe mechanism
    if (xSemaphoreTake(xSemaphore, portMAX_DELAY) == pdTRUE) {
      directionCommand = command;
      xSemaphoreGive(xSemaphore);
    }

    delay(100);
  }
}


// Task to handle car movement
void movementTask(void *parameter) {
  while (true) {
    int command = 4;  // Default: Move forward

    if (xSemaphoreTake(xSemaphore, portMAX_DELAY) == pdTRUE) {
      command = directionCommand;
      xSemaphoreGive(xSemaphore);
    }

    // Check if command has changed
    if (command != lastCommand) {
      stopMotors();  // Stop motors before changing direction
      delay(500);

      lastCommand = command;  // Update the last command
    }

    // Execute movement based on command
    switch (command) {
      case -1:  // Reverse
        Serial.println("Reversing...");
        reverse();
        break;
      case 1:  // Go left
        Serial.println("Turning Left...");
        left();
        break;
      case 2:  // Go right
        Serial.println("Turning Right...");
        right();
        break;
      case 3:  // Go forward
        Serial.println("Moving Forward...");
        forward();
        break;
      default:  // Default: Move forward
        forward();
        break;
    }
    delay(50);  // Small delay to ensure smooth operations
  }
}

// Motor control functions
void forward() {
  digitalWrite(IN1, LOW);
  digitalWrite(IN2, HIGH);
  digitalWrite(IN3, HIGH);
  digitalWrite(IN4, LOW);
}

void reverse() {
  digitalWrite(IN1, HIGH);
  digitalWrite(IN2, LOW);
  digitalWrite(IN3, LOW);
  digitalWrite(IN4, HIGH);
}

void left() {
  digitalWrite(IN1, LOW);
  digitalWrite(IN2, HIGH);
  digitalWrite(IN3, LOW);
  digitalWrite(IN4, HIGH);
}

void right() {
  digitalWrite(IN1, HIGH);
  digitalWrite(IN2, LOW);
  digitalWrite(IN3, HIGH);
  digitalWrite(IN4, LOW);
}

void stopMotors() {
  digitalWrite(IN1, LOW);
  digitalWrite(IN2, LOW);
  digitalWrite(IN3, LOW);
  digitalWrite(IN4, LOW);
}

void setup() {
  Serial.begin(115200);

  // Initialize motor pins
  pinMode(IN1, OUTPUT);
  pinMode(IN2, OUTPUT);
  pinMode(IN3, OUTPUT);
  pinMode(IN4, OUTPUT);

  // Initialize ultrasonic sensor pins
  pinMode(trigLeft, OUTPUT);
  pinMode(echoLeft, INPUT);
  pinMode(trigCenter, OUTPUT);
  pinMode(echoCenter, INPUT);
  pinMode(trigRight, OUTPUT);
  pinMode(echoRight, INPUT);

  // Create semaphore for shared resource
  xSemaphore = xSemaphoreCreateMutex();

  // Create tasks
  xTaskCreatePinnedToCore(sensorTask, "Sensor Task", 10000, NULL, 1, NULL, 0);      // Core 0
  xTaskCreatePinnedToCore(movementTask, "Movement Task", 10000, NULL, 1, NULL, 1);  // Core 1

  Serial.println("System Initialized");
}

void loop() {
  // Empty - all logic handled in tasks
}
