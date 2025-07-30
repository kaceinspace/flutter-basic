import 'package:flutter/material.dart';
import 'package:xii_rpl_1/main_layout.dart';

class ClassDetailScreen extends StatelessWidget {
  final Map<String, String> data;
  const ClassDetailScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: data['title']!,
      body: Stack(
        children: [
          // Gambar latar
          Positioned.fill(
            child: Hero(
              tag: data['image']!,
              child: Image.network(
                data['image']!,
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Lapisan gelap semi transparan
          Container(
            color: Colors.black.withOpacity(0.65),
          ),
          // Konten utama
          SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Card isi info
                    Card(
                      color: Colors.white.withOpacity(0.1),
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                        side: BorderSide(color: Colors.white24),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Column(
                          children: [
                            Text(
                              data['title']!,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 12),
                            Text(
                              data['description']!,
                              style: const TextStyle(
                                color: Colors.white70,
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 14,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Belum ada materi, coming soon 👀"),
                          ),
                        );
                      },
                      icon: const Icon(Icons.play_arrow),
                      label: const Text(
                        "Mulai Belajar",
                        style: TextStyle(fontSize: 16),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
