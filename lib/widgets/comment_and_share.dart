import 'package:flutter/material.dart';

class CommentAndShare extends StatelessWidget {
  final IconData icon;
  final String text;

  const CommentAndShare({required this.icon, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 17,
      
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: const TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
