import 'package:flutter/material.dart';
import 'package:xii_rpl_1/main_layout.dart';

class StackThree extends StatelessWidget {
  const StackThree({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Image With Stack',
      body: Stack(
        children: [
          Image.network(
            'https://cdn.antaranews.com/cache/1200x800/2025/04/18/Persib-Bandung-Kalahkan-Bali-United-180425-rai-1.jpg',
          ),
          Positioned(bottom: 10, left: 10, child: Text('Persib Bandung')),
        ],
      ),
    );
  }
}
