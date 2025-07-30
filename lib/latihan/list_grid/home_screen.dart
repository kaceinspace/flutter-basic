import 'package:flutter/material.dart';
import 'package:xii_rpl_1/latihan/class_list_screen.dart';
import 'package:xii_rpl_1/main_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<Map<String, String>> categories = const [
    {'name': 'UI Design', 'image': 'https://picsum.photos/200?1'},
    {'name': 'Backend', 'image': 'https://picsum.photos/200?2'},
    {'name': 'Animation', 'image': 'https://picsum.photos/200?3'},
    {'name': 'Firebase', 'image': 'https://picsum.photos/200?4'},
  ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Belajar Flutter',
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: categories.map((cat) {
              return GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ClassListScreen(category: cat['name']!),
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(cat['image']!),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black.withOpacity(0.4),
                        ),
                      ),
                      Center(
                        child: Text(
                          cat['name']!,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
