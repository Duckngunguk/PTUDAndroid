import 'package:flutter/material.dart';

class TluVerifiedBadge extends StatelessWidget {
  final String title;

  const TluVerifiedBadge({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.teal.shade400, Colors.blue.shade600],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.teal.withAlpha(89), // ~35% opacity
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.verified_user_rounded,
            color: Colors.white,
            size: 22,
          ),
          const SizedBox(width: 8),
          Text(
            title.toUpperCase(),
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800,
              letterSpacing: 1.1,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}
