import 'package:binge_box/const/consts.dart';
import 'package:binge_box/data/data_source/interceptos/pretty_dio_logger_interceptor.dart';
import 'package:binge_box/data/data_source/retrofit_api_data_source_impl.dart';
import 'package:binge_box/domain/data_source/retrofit_api_data_source.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';

@module
abstract class ApiModule {
  @singleton
  Dio get client => Dio(
        BaseOptions(
          baseUrl: apiUrl,
          contentType: defaultContentType,
          headers: {
            "Accept": "application/json",
            authHeaderKey: "Bearer ${dotenv.get('AUTH_TOKEN')}"
          },
        ),
      )..interceptors.addAll([
          prettyDioLogger,
        ]);

  RetrofitApiDataSource apiDataSource(Dio dio) => RetrofitApiDataSourceImpl(
        dio,
        baseUrl: apiUrl,
      );
}
