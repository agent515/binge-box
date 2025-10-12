import 'package:binge_box/utils/app_sizes.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppSizesModule {
  @lazySingleton
  AppSizes get instance => AppSizes();
}
