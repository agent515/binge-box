import 'package:binge_box/app/app.dart';
import 'package:binge_box/injectable/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  await dotenv.load();
  await configureDependencies();
  runApp(const BingeBox());
}
