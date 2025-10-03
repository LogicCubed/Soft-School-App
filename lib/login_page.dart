import 'package:flutter/material.dart';

final ButtonStyle softSchoolButtonStyle = ElevatedButton.styleFrom(
  backgroundColor: const Color(0xFFFF94C6),
  foregroundColor: Colors.white,
  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 48),
  textStyle: const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  ),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12),
  ),
  elevation: 4,
);

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 70, 200, 255),
              Color.fromARGB(255, 72, 114, 255),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/softy.png',
                width: 150,
                height: 150,
              ),
              const SizedBox(height: 24),
              const Text(
                'Soft School',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                style: softSchoolButtonStyle,
                onPressed: () {
                  // TODO: handle login
                },
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}