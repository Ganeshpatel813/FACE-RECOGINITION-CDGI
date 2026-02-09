import 'package:flutter/material.dart';

class FacultyDetailsPage extends StatelessWidget {
  const FacultyDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    const Color scaffoldBackgroundColor = Color(0xFFF5F7FA);

    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      appBar: AppBar(
        title: const Text(
          'Faculty Details',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            const FacultyDetailTextField(label: "Full Name"),
            const FacultyDetailTextField(label: "Faculty ID"),
            const FacultyDetailTextField(label: "Department"),
            const FacultyDetailTextField(label: "Email"),
            const FacultyDetailTextField(label: "Mobile Number"),
            const FacultyDetailTextField(label: "Designation"),
            const FacultyDetailTextField(label: "College Name"),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Saving faculty details...')),
                ),
                style: ElevatedButton.styleFrom(
                  // Changed button background color to match the scaffold's background color.
                  backgroundColor:Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  "Save & Continue",
                  style: TextStyle(
                    fontSize: 16,
                    // Changed text color to a darker shade for readability against the lighter button background.
                    color: Colors.deepPurple,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FacultyDetailTextField extends StatelessWidget {
  final String label;

  const FacultyDetailTextField({
    super.key,
    required this.label,
  });

  @override
    Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: TextField(
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(color: Colors.grey[700]),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.deepPurple, width: 2),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Faculty App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: const AppBarTheme(
          toolbarHeight: 60,
          elevation: 4,
        ),
      ),
      home: const FacultyDetailsPage(),
    );
  }
}