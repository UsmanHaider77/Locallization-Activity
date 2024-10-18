import 'package:get/get.dart';

class HomeTranslations extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'appbar': 'Welcome to My App',
          'title': 'Welcome to Android App Development',
          'button': 'Change Language',
        },
        'en_PK': {
          'appbar': 'میری ایپ میں خوش آمدید',
          'title': 'اینڈرائیڈ ایپ ڈویلپمنٹ میں خوش آمدید',
          'button': 'زبان تبدیل کریں',
        },
      };
}
