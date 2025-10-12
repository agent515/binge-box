import 'package:binge_box/injectable/service_locator.dart';
import 'package:binge_box/utils/app_router.dart';
import 'package:flutter/material.dart';

class BingeBox extends StatelessWidget {
  const BingeBox({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Binge Box',
      routerConfig: getIt<AppRouter>().config(),
    );
  }
}
