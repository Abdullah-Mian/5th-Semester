import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class HOME extends StatelessWidget {
  const HOME({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F6F2), // Light background
      appBar: AppBar(
        title: const Text(
          'Gorgeous Flutter App',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF5C6BC0),
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF6A82FB), Color(0xFFFC5C7D)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'Welcome to the Interactive Cards!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  ToggleSwitch(
                    initialLabelIndex: 0,
                    totalSwitches: 3,
                    labels: ['America', 'Canada', 'Mexico'],
                    onToggle: (index) {
                      print('Switched to: $index');
                    },
                  ),
                  const SizedBox(height: 20),
                  _buildInteractiveCard(
                    title: 'Explore Nature',
                    icon: Icons.park,
                    backgroundColor: const Color(0xFF8EC6C5),
                    context: context,
                    onTap: () => _showSomething(context, 'Nature is beautiful!'),
                  ),
                  const SizedBox(height: 20),
                  _buildInteractiveCard(
                    title: 'Travel the World',
                    icon: Icons.flight_takeoff,
                    backgroundColor: const Color(0xFFFC5C7D),
                    context: context,
                    onTap: () => _navigateToPage(context, const TravelPage()),
                  ),
                  const SizedBox(height: 20),
                  _buildInteractiveCard(
                    title: 'Enjoy Music',
                    icon: Icons.music_note,
                    backgroundColor: const Color(0xFFFDB99B),
                    context: context,
                    onTap: () => _showSomething(context, 'Music is life!'),
                  ),
                  const SizedBox(height: 20),
                  _buildInteractiveCard(
                    title: 'Delicious Food',
                    icon: Icons.fastfood,
                    backgroundColor: const Color(0xFF5C6BC0),
                    context: context,
                    onTap: () => _navigateToPage(context, const FoodPage()),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFFFC5C7D),
        child: const Icon(Icons.message, color: Colors.white),
      ),
    );
  }

  // Interactive card widget
  Widget _buildInteractiveCard({
    required String title,
    required IconData icon,
    required Color backgroundColor,
    required BuildContext context,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              spreadRadius: 2,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Icon(
              icon,
              color: Colors.white,
              size: 40,
            ),
          ],
        ),
      ),
    );
  }

  // Function to show a message in a dialog
  void _showSomething(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Message'),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  // Function to navigate to another page
  void _navigateToPage(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }
}

// Simple travel page for navigation
class TravelPage extends StatelessWidget {
  const TravelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Travel the World'),
        backgroundColor: const Color(0xFFFC5C7D),
      ),
      body: const Center(
        child: Text(
          'Explore the world with us!',
          style: TextStyle(fontSize: 24, color: Colors.grey),
        ),
      ),
    );
  }
}

// Simple food page for navigation
class FoodPage extends StatelessWidget {
  const FoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Delicious Food'),
        backgroundColor: const Color(0xFF5C6BC0),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Discover amazing food!',
            style: TextStyle(fontSize: 24, color: Colors.grey),
          ),
          SizedBox(height: 20),
          Image(
            image: AssetImage('assets/food.jpg'),
          ),
        ],
      ),
    );
  }
}
