import 'package:flutter/material.dart';
import 'package:xii_rpl_1/container_widget/container_satu.dart';
import 'package:xii_rpl_1/main_layout.dart';

class ContainerDua extends StatelessWidget {
  const ContainerDua({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Container Dua',
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.only(right: 10, left: 10, top: 8, bottom: 50),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.lightBlueAccent,
              Colors.redAccent,
              Colors.pinkAccent,
              Colors.blueGrey,
            ],
            begin: Alignment.bottomRight,
            end: Alignment.topCenter,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ContainerSatu()),
              );
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
            child: Text(
              'Pindah Ke Halaman 1',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
