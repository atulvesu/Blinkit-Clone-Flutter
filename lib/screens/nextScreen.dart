// ignore_for_file: file_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Nextscreen extends StatelessWidget {
  const Nextscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // Show a loading indicator while waiting for the authentication state
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          // Display an error message if there's an issue
          else if (snapshot.hasError) {
            return const Center(child: Text('Something went wrong!'));
          }
          // If the user is signed in, show a welcome message
          else if (snapshot.hasData) {
            User? user = snapshot.data;
            return Center(child: Text('Welcome, ${user?.displayName}'));
          }
          // If the user is not signed in, prompt them to sign in
          else {
            return const Center(child: Text('Please sign in'));
          }
        },
      ),
    );
  }
}
