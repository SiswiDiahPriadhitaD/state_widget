import 'package:flutter/material.dart';

class convert extends StatelessWidget {
  const convert({
    Key? key,
    required this.konversi,
  }) : super(key: key);

  final Function konversi;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: Colors.lightBlue),
        onPressed: (() {
          konversi();
        }),
        child: Text(
          "Konversi Suhu",
          style: TextStyle(
            color: Color(0xffffffffff),
          ),
        ),
      ),
    );
  }
}
