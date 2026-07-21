import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final String courseCode;
  final String title;
  final String instructor;
  final int credits;
  final bool isPrerequisite;
  final VoidCallback onTap;

  const CourseCard({
    super.key,
    required this.courseCode,
    required this.title,
    required this.instructor,
    required this.credits,
    this.isPrerequisite = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Khối bên trái
            Container(
              width: 64,
              height: 64,
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: Colors.blue.shade200),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    courseCode,
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 14,
                      color: Colors.blue.shade800,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  if (isPrerequisite) ...[
                    const SizedBox(height: 4),

                    const Icon(
                      Icons.warning_amber_rounded,
                      color: Colors.red,
                      size: 18,
                    ),

                    const SizedBox(height: 2),

                    const Text(
                      "MÔN TIÊN QUYẾT\nBẮT BUỘC",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 9,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ],
              ),
            ),

            const SizedBox(width: 14),

            // Khối giữa
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                  ),

                  const SizedBox(height: 4),

                  Row(
                    children: [
                      Icon(
                        Icons.person_pin_circle_rounded,
                        size: 16,
                        color: Colors.grey.shade600,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        instructor,
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey.shade700,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 6),

                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.orange.shade50,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      '$credits Tín chỉ',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange.shade800,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(width: 12),

            // Khối bên phải
            IconButton(
              onPressed: onTap,
              tooltip: 'Xem chi tiết khóa học',
              color: Colors.blue.shade700,
              icon: const Icon(Icons.arrow_forward_ios_rounded, size: 20),
            ),
          ],
        ),
      ),
    );
  }
}
