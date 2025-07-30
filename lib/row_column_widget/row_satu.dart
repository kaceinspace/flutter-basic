import 'package:flutter/material.dart';
import 'package:xii_rpl_1/main_layout.dart';

class RowOne extends StatelessWidget {
  const RowOne({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Row Satu',
      body: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: [
          Text('Text Widget 1'),
          Text('Text Widget 2'),
          Text('Text Widget 3'),
          Text(
            '50',
            style: TextStyle(
              fontSize: 50,
              decoration: TextDecoration.underline,
              decorationColor: Colors.green,
            ),
          ),
          Text(
            'KG',
            style: TextStyle(
              fontSize: 20,
              decoration: TextDecoration.underline,
              decorationColor: Colors.green,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [Text('Text WC 1 '), Text('Text WC 1 ')],
          ),
        ],
      ),
    );
  }
}
