import 'package:flutter/material.dart';

class SoftSchoolButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const SoftSchoolButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFFF96BF), // secondary pink
          borderRadius: BorderRadius.circular(12),
          border: Border(
            bottom: BorderSide(
              color: const Color(0xFFE376A0), // darker bottom for 3D effect
              width: 4, // thickness of “shadow”
            ),
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
        child: Center(
          child: Text(
            text.toUpperCase(), // like your uppercase in TSX
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.0, // mimic tracking-wide
            ),
          ),
        ),
      ),
    );
  }
}