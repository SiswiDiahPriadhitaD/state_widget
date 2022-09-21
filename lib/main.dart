import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:statefull_widget/widget/convert.dart';
import 'package:statefull_widget/widget/input.dart';
import 'package:statefull_widget/widget/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  TextEditingController etInput = new TextEditingController();

  double inputUser = 0;

  double kealvin = 0;

  double reamor = 0;

  konversi() {
    setState(() {
      inputUser = double.parse(etInput.text);
      reamor = 4 / 5 * inputUser;
      kealvin = inputUser + 273;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Konverter Suhu"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              input(etInput: etInput),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  result(
                    hasil: kealvin,
                    title: 'Suhu Dalam Kealvin',
                  ),
                  result(
                    hasil: reamor,
                    title: 'Suhu Dalam Reamor',
                  ),
                ],
              ),
              convert(
                konversi: konversi,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
