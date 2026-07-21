import 'package:flutter/material.dart';

class PromoBanner extends StatelessWidget {
  const PromoBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        // Banner chính
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.indigo.shade900,
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
              image: NetworkImage(
                'https://images.unsplash.com/photo-1516321318423-f06f85e504b3?w=600',
              ),
              fit: BoxFit.cover,
              opacity: 0.25,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'HỌC PHẦN TRỌNG TÂM',
                style: TextStyle(
                  color: Colors.amber,
                  fontWeight: FontWeight.w800,
                  fontSize: 12,
                  letterSpacing: 1.2,
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                'Phát Triển Ứng Dụng Di Động\nĐa Nền Tảng (CSE441)',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                  height: 1.3,
                ),
              ),

              const SizedBox(height: 16),

              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.app_registration_rounded, size: 18),
                label: const Text(
                  'Đăng ký thực hành ngay',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  foregroundColor: Colors.indigo,
                ),
              ),
            ],
          ),
        ),

        // Huy hiệu HOT
        Positioned(
          bottom: 12,
          left: 16,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.green.shade600,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 6,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.local_fire_department_rounded,
                  color: Colors.white,
                  size: 16,
                ),
                SizedBox(width: 4),
                Text(
                  'HOT 2026',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
