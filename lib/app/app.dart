import 'package:binge_box/presentation/home/home_page.dart';
import 'package:flutter/material.dart';

class BingeBox extends StatelessWidget {
  const BingeBox({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Binge Box',
      home: HomePage(),
    );
  }
}
