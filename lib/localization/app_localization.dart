import 'package:get/get.dart';
// import 'fr_fr/fr_fr_translation.dart';
import 'en_us/en_us_translation.dart';

class AppLocalization extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {'enUs': enUs};
}
