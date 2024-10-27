import 'package:localization_project/generated/locales.g.dart';

class LocalizationService {
  static const Map<String, Map<String, String>> keys = {
    'fa': {
      ...Locales.fa_IR,
    },
    'en': {
      ...Locales.en_US,
    },
  };
}
