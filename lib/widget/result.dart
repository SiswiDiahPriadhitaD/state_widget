import 'package:flutter/material.dart';

class result extends StatelessWidget {
  const result({
    Key? key,
    required this.hasil,
    required this.title,
  }) : super(key: key);

  final double hasil;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '$title',
          style: TextStyle(fontSize: 15),
        ),
        Padding(padding: EdgeInsets.all(10)),
        Text(
          '$hasil',
          style: TextStyle(fontSize: 30),
        ),
      ],
    );
  }
}
