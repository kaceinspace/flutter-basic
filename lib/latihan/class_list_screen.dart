import 'package:flutter/material.dart';
import 'package:xii_rpl_1/latihan/class_detail_screen.dart';
import 'package:xii_rpl_1/main_layout.dart';

class ClassListScreen extends StatelessWidget {
  final String category;
  const ClassListScreen({super.key, required this.category});

  final List<Map<String, String>> allClassList = const [
    {
      'title': 'Layouting Dasar',
      'description': 'Belajar Row, Column, Stack, dll.',
      'image': 'https://picsum.photos/200/100?1',
      'category': 'UI Design'
    },
    {
      'title': 'Form & Input',
      'description': 'Input form, TextField, validation',
      'image': 'https://picsum.photos/200/100?2',
      'category': 'UI Design'
    },
    {
      'title': 'CRUD Firebase',
      'description': 'Simpan, baca, ubah, dan hapus data di Firebase',
      'image': 'https://picsum.photos/200/100?3',
      'category': 'Firebase'
    },
    {
      'title': 'Backend Laravel',
      'description': 'Membuat API menggunakan Laravel',
      'image': 'https://picsum.photos/200/100?4',
      'category': 'Backend'
    },
    {
      'title': 'Basic Animation',
      'description': 'Belajar animasi sederhana di Flutter',
      'image': 'https://picsum.photos/200/100?5',
      'category': 'Animation'
    }
  ];

  @override
  Widget build(BuildContext context) {
    final filteredList =
        allClassList.where((kelas) => kelas['category'] == category).toList();

    return MainLayout(
      title: category,
      body: SafeArea(
        child: ListView.builder(
          itemCount: filteredList.length,
          itemBuilder: (context, index) {
            final kelas = filteredList[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: InkWell(
                borderRadius: BorderRadius.circular(15),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ClassDetailScreen(data: kelas),
                    ),
                  );
                },
                child: Container(
                  height: 140,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(color: Colors.black12, blurRadius: 6)
                    ],
                  ),
                  child: Row(
                    children: [
                      Hero(
                        tag: kelas['image']!,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                          ),
                          child: Image.network(
                            kelas['image']!,
                            width: 100,
                            height: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Icon(Icons.school,
                                      size: 18, color: Colors.blueAccent),
                                  const SizedBox(width: 6),
                                  Expanded(
                                    child: Text(
                                      kelas['title']!,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 6),
                              Text(
                                kelas['description']!,
                                style: const TextStyle(fontSize: 13),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: 6),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 4),
                                  decoration: BoxDecoration(
                                    color: Colors.blue[50],
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Text(
                                    kelas['category']!,
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
