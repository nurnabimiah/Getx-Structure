
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/localization_controller.dart';




class HomeScreen extends StatelessWidget {
  static const String routeName = '/home_screen';

  final LocaleController localeController = Get.find<LocaleController>();

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          // Assuming you have a button to change the language
          ElevatedButton(
            onPressed: () {
              // Show a language selection dialog or implement your logic
              // For now, let's switch between English and Bengali on each button press
              if (localeController.local.value == 'en_US') {
                localeController.updateLocale('bn_BD');
              } else {
                localeController.updateLocale('en_US');
              }
            },
            child: Text('Change Language'),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('take_money'.tr, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800)),
          ],
        ),
      ),
    );
  }
}
