import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx_structure/utils/app_color_resources.dart';
import 'package:getx_structure/utils/app_constants.dart';
import 'package:getx_structure/view/screens/home_screen/home_screen.dart';
import 'di_container.dart' as di;
import 'localization/app_translations.dart';
import 'localization/storage_service.dart';

var storage;



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  //init
  await initialConfig();
  //initialize
  storage = Get.find<StorageService>();
  runApp(
    const MyApp(),
  );
}

initialConfig() async {
  await Get.putAsync(() => StorageService().init());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: AppColorResources.appBarColor,
    ));

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);



    return ScreenUtilInit(
        designSize: const Size(360, 800),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(

            debugShowCheckedModeBanner: false,
            title: AppConstants.appName,
            theme: ThemeData(
              useMaterial3: true,
              primarySwatch: Colors.red,
            ),
            translations: AppTranslations(),
            locale: storage.languageCode != null
                ? Locale(storage.languageCode!, storage.countryCode)
                : Locale("en", "US"),
            fallbackLocale: Locale('en', 'US'),
            initialRoute: HomeScreen.routeName,
            getPages: [
               GetPage(name: HomeScreen.routeName, page: () => HomeScreen()),
              // GetPage(name: LoginScreen.routeName, page: () => LoginScreen()),
              // GetPage(name: BottomNavigationBarScreen.routeName, page: () => BottomNavigationBarScreen(), transition: Transition.rightToLeft, transitionDuration: Duration(milliseconds: 300)),

            ],
          );
        });
  }
}

