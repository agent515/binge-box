import 'package:binge_box/utils/app_router.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppRouterModule {
  @lazySingleton
  AppRouter get appRouter => AppRouter();
}
