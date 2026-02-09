import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Face Registration',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const FaceRegistrationScreen(),
    );
  }
}

class FaceRegistrationScreen extends StatelessWidget {
  const FaceRegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFE0C3),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Register Your Face",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Align your face inside the frame",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),

            // Camera Preview Placeholder
            Expanded( // Use Expanded to allow the camera frame to take available space
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.orange, width: 2),
                ),
                child: const Center(
                  child: Icon(
                    Icons.camera_alt,
                    size: 60,
                    color: Colors.orange,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Make sure your face is clearly visible",
              style: TextStyle(color: Colors.grey),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 30),

            // Capture Button
            ElevatedButton(
              onPressed: () {
                // Camera capture logic later
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Capture button pressed!')),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange,
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
                foregroundColor: Colors.white, // Set icon/text color
              ),
              child: const Icon(Icons.camera, size: 30),
            ),

            const SizedBox(height: 20),

            // Continue Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to Dashboard / Faculty Details
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Continue button pressed!')),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  foregroundColor: Colors.white, // Set text color
                ),
                child: const Text(
                  "Continue",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}