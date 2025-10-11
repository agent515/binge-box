import 'package:binge_box/app/app.dart';
import 'package:binge_box/injectable/service_locator.dart';
import 'package:flutter/material.dart';

void main() async {
  await configureDependencies();
  runApp(const BingeBox());
}
