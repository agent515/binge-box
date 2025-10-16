import 'package:injectable/injectable.dart';
import 'package:binge_box/data/local/drift_database.dart';

@module
abstract class LocalDbModule {
  @lazySingleton
  AppDatabase provideAppDatabase() => AppDatabase();
}
