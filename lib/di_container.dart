import 'package:dio/dio.dart';
import 'package:get/get.dart';

import 'package:get_it/get_it.dart';
import 'package:getx_structure/controller/localization_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'data/datasource/remote/dio/logging_interceptor.dart';



final sl = GetIt.instance;

Future<void> init() async {
  /// Core
  //sl.registerLazySingleton(() => DioClient(AppConstants.baseUri, sl(), loggingInterceptor: sl(), sharedPreferences: sl()));


  ///Repository
  // sl.registerLazySingleton(() => AuthRepo(dioClient: sl(), sharedPreferences: sl()));
  // sl.registerLazySingleton(() => TakeMoneyRepo(dioClient: sl(), sharedPreferences: sl()));



  /// Controller
     Get.lazyPut(() => LocaleController(), fenix: true);
  // Get.lazyPut(() => TransactionInformationPageController(transactionInfoRepo: sl()), fenix: true);



  //sl.registerFactory(() => AuthController(authRepo: sl(),dioClient: sl()));


  /// External pocket lock
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => Dio());
  sl.registerLazySingleton(() => LoggingInterceptor());
}
