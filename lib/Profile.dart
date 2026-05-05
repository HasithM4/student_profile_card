import 'package:flutter/material.dart';

class StudentProfile extends StatelessWidget {
  const StudentProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Student Profile"), centerTitle: true),
      body: Center(
        child: Card(
          elevation: 8,
          margin: EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Profile Icon
                CircleAvatar(radius: 40, child: Icon(Icons.person, size: 50)),

                SizedBox(height: 10),

                // Student Name
                Text(
                  "Hasith Maduranga",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),

                // Student ID
                Text("Student ID: 23DA2-0155", style: TextStyle(fontSize: 16)),

                // Degree
                Text(
                  "Bachelor in Applied Information Technology",
                  style: TextStyle(fontSize: 16),
                ),

                SizedBox(height: 10),

                // Phone Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.phone),
                    SizedBox(width: 5),
                    Text("+94 77 123 4567"),
                  ],
                ),

                SizedBox(height: 15),

                // Buttons Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        debugPrint("Email clicked");
                      },
                      icon: Icon(Icons.email),
                      label: Text("Email"),
                    ),

                    ElevatedButton.icon(
                      onPressed: () {
                        debugPrint("View Profile clicked");
                      },
                      icon: Icon(Icons.person),
                      label: Text("View"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
