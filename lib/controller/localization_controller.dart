


import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';


import '../localization/storage_service.dart';

class LocaleController extends GetxController {
  final storage = Get.find<StorageService>();
  final RxString local = Get.locale.toString().obs;
  final RxString selectedCurrency = ''.obs;
  final box = GetStorage();

  final Map<String, dynamic> optionsLocales = {
    'en_US': {
      'languageCode': 'en',
      'countryCode': 'US',
      'description': 'English',
    },
    'bn_BD': {
      'languageCode': 'bn',
      'countryCode': 'BD',
      'description': 'বাংলা',
    },
    'hi_IN': {
      'languageCode': 'hi',
      'countryCode': 'IN',
      'description': 'हिंदी',
    },
  };

  void updateLocale(String key) {
    final String languageCode = optionsLocales[key]['languageCode'];
    final String countryCode = optionsLocales[key]['countryCode'];
    Get.updateLocale(Locale(languageCode, countryCode));
    local.value = Get.locale.toString();
    storage.write("languageCode", languageCode);
    storage.write("countryCode", countryCode);
  }


  String getSavedCurrency() {
    update();
    return box.read('selectedCurrency') ?? '';
  }

  void updateLocaleCurrency(String newValue) {
    update();
    selectedCurrency.value = newValue;
    if (kDebugMode) {
      print(selectedCurrency.value);
    }
    // Save selected currency to SharedPreferences
    // Save selected currency to GetStorage
    box.write('selectedCurrency', newValue);

  }


  /// For Currency Map
  final Map<String, dynamic> currencyMap = {
    '৳': {
      'name': 'BDT',
      'symbol': '৳',
    },
    '₹': {
      'name': 'Rupee',
      'symbol': '₹',
    },
    '€': {
      'name': 'Euro',
      'symbol': '€',
    },
    '\$': {
      'name': 'Dollar',
      'symbol': '\$',
    },
    '£': {
      'name': 'Pound',
      'symbol': '£',
    },
    '¥': {
      'name': 'Yen',
      'symbol': '¥',
    },
    '₣': {
      'name': 'Franc',
      'symbol': '₣',
    },
    'د.ك': {
      'name': 'Dinar',
      'symbol': 'د.ك',
    },
    '₮': {
      'name': 'Tugrik',
      'symbol': '₮',
    },
    '₲': {
      'name': 'Guarani',
      'symbol': '₲',
    },
    '₪': {
      'name': 'Sheqel',
      'symbol': '₪',
    },
    '₰': {
      'name': 'Penny',
      'symbol': '₰',
    },
  };
}
