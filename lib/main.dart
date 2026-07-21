import 'package:flutter/material.dart';
import 'ui/widgets/custom_badge.dart';
import 'ui/widgets/course_card.dart';
import 'ui/widgets/promo_banner.dart';

void main() {
  runApp(const Lab03LayoutApp());
}

class Lab03LayoutApp extends StatelessWidget {
  const Lab03LayoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TLU Course Showcase',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const CourseShowcaseScreen(),
    );
  }
}

class CourseShowcaseScreen extends StatefulWidget {
  const CourseShowcaseScreen({super.key});

  @override
  State<CourseShowcaseScreen> createState() => _CourseShowcaseScreenState();
}

class _CourseShowcaseScreenState extends State<CourseShowcaseScreen> {
  String _statusMessage =
      'Sẵn sàng tương tác! Hãy thử bấm vào các thẻ bên dưới.';

  void _updateStatus(String newMessage) {
    setState(() {
      _statusMessage = newMessage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      appBar: AppBar(
        title: const Text(
          'DANH MỤC HỌC PHẦN TLU',
          style: TextStyle(fontWeight: FontWeight.w800),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: [
              const Center(
                child: TluVerifiedBadge(title: 'Hệ thống Đào tạo Tín chỉ'),
              ),

              const SizedBox(height: 12),

              const PromoBanner(),

              const SizedBox(height: 24),
              const Text(
                'MINH HỌA FLEX 2 : 1',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),

              const SizedBox(height: 10),

              SizedBox(
                height: 80,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.red,
                        child: const Center(
                          child: Text(
                            'Flex = 2',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(width: 8),

                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.blue,
                        child: const Center(
                          child: Text(
                            'Flex = 1',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              Container(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: Colors.teal.shade50,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.teal.shade300),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.touch_app_rounded,
                      color: Colors.teal,
                      size: 26,
                    ),

                    const SizedBox(width: 12),

                    Expanded(
                      child: Text(
                        _statusMessage,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.teal.shade900,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () => _updateStatus(
                        '⚡ Bạn vừa gõ nhanh (Tap) vào nút GestureDetector!',
                      ),
                      onDoubleTap: () => _updateStatus(
                        '🔥 Bạn vừa gõ đúp 2 lần (Double Tap) vào GestureDetector!',
                      ),
                      onLongPress: () => _updateStatus(
                        '🛡️ Bạn đang giữ lâu (Long Press) vào GestureDetector!',
                      ),

                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: Colors.blueAccent,
                            width: 2,
                          ),
                        ),
                        child: const Column(
                          children: [
                            Icon(
                              Icons.gesture_rounded,
                              color: Colors.blueAccent,
                            ),
                            SizedBox(height: 4),
                            Text(
                              'GestureDetector\n(Nhấn đúp/Giữ lâu)',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 12),

                  Expanded(
                    child: Material(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(12),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(12),
                        splashColor: Colors.white.withAlpha(102),
                        onTap: () => _updateStatus(
                          '🌊 Bạn vừa bấm nút InkWell (Có hiệu ứng sóng nước)!',
                        ),
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          child: const Column(
                            children: [
                              Icon(
                                Icons.water_drop_rounded,
                                color: Colors.white,
                              ),
                              SizedBox(height: 4),
                              Text(
                                'InkWell Button\n(Hiệu ứng sóng nước)',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 24),

              const Text(
                'DANH SÁCH HỌC PHẦN NỔI BẬT',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 15,
                  color: Colors.black87,
                ),
              ),

              const SizedBox(height: 12),

              CourseCard(
                courseCode: 'CSE448',
                title: 'Phát triển ứng dụng di động đa nền tảng với Flutter',
                instructor: 'TS. Nguyễn Văn X',
                credits: 3,
                onTap: () => _updateStatus('📖 Đang xem chi tiết môn CSE448.'),
              ),

              CourseCard(
                courseCode: 'CSE381',
                title: 'Phát triển ứng dụng Web chuyên sâu (NodeJS/React)',
                instructor: 'ThS. Trần Thị Y',
                credits: 3,
                onTap: () => _updateStatus('📖 Đang xem chi tiết môn CSE381.'),
              ),

              CourseCard(
                courseCode: 'CSE485',
                title: 'Trí tuệ Nhân tạo & Học máy ứng dụng',
                instructor: 'PGS.TS. Lê Văn Z',
                credits: 4,
                onTap: () => _updateStatus('📖 Đang xem chi tiết môn CSE485.'),
              ),
              CourseCard(
                courseCode: 'CSE499',
                title: 'Đồ án tốt nghiệp / Thực tập chuyên ngành',
                instructor: 'GVHD: TS. Nguyễn Văn A',
                credits: 6,
                onTap: () => _updateStatus(
                  '🎓 Đang xem môn Đồ án tốt nghiệp / Thực tập chuyên ngành',
                ),
              ),
              CourseCard(
                courseCode: 'CSE441',
                title: 'Phát triển ứng dụng di động đa nền tảng với Flutter',
                instructor: 'GVHD: TS. Kiều Tuấn Dũng',
                credits: 3,
                isPrerequisite: true,
                onTap: () => _updateStatus('📖 Đang xem chi tiết môn CSE441.'),
              ),
              CourseCard(
                courseCode: 'CSE442',
                title: 'Công nghệ Web',
                instructor: 'GVHD: Tạ Chí Hiếu',
                credits: 3,
                onTap: () => _updateStatus('📖 Đang xem chi tiết môn CSE442.'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
