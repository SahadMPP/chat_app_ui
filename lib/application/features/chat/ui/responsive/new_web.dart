import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wavee AI'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text('Home'),
              onTap: () {
                // Handle navigation to home page
              },
            ),
            ListTile(
              title: Text('Chatbot'),
              onTap: () {
                // Handle navigation to chatbot page
              },
            ),
            ListTile(
              title: Text('Reports'),
              onTap: () {
                // Handle navigation to reports page
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Text(
              'Experience seamless chatbot interaction with Wavee.AI',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Daily prompt example:',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              '- Ask about the best gift for a gamer',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Capabilities:',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              '- Instant answers',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '- Helpful recommendations',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle button click
              },
              child: Text('Learn More'),
              style: ElevatedButton.styleFrom(
                
                backgroundColor: Colors.pink, // Pink button color
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.facebook),
                  onPressed: () {
                    // Handle social media link
                  },
                ),
                IconButton(
                  icon: Icon(Icons.chat),
                  onPressed: () {
                    // Handle social media link
                  },
                ),
                IconButton(
                  icon: Icon(Icons.linked_camera),
                  onPressed: () {
                    // Handle social media link
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}