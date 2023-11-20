
import 'package:get/get.dart';

import 'language/bangla.dart';
import 'language/english.dart';
import 'language/hindi.dart';
class AppTranslations extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'en_US': english,
        'bn_BD': bengali,
        'hi_IN': hindi,
      };
}
