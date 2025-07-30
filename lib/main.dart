import 'package:flutter/material.dart';
import 'package:xii_rpl_1/container_widget/container_dua.dart';
import 'package:xii_rpl_1/container_widget/container_satu.dart';
import 'package:xii_rpl_1/grid_view/grid_screen.dart';
import 'package:xii_rpl_1/latihan/home_screen.dart';
import 'package:xii_rpl_1/latihan/latihan_satu.dart';
import 'package:xii_rpl_1/list_widget/list_screen.dart';
import 'package:xii_rpl_1/main_layout.dart';
import 'package:xii_rpl_1/row_column_widget/column_satu.dart';
import 'package:xii_rpl_1/row_column_widget/latihan_row_column.dart';
import 'package:xii_rpl_1/row_column_widget/row_satu.dart';
import 'package:xii_rpl_1/stack_widget/stack_dua.dart';
import 'package:xii_rpl_1/stack_widget/stack_satu.dart';
import 'package:xii_rpl_1/stack_widget/stack_tiga.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HelloFlutter extends StatelessWidget {
  const HelloFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Belajar Flutter',
      body: Center(
        child: Text(
          'Hello Flutter',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.blue,
          ),
        ),
      ),
    );
  }
}
