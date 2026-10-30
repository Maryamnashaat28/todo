// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get email => 'البريد الالكتروني';

  @override
  String get password => 'كلمة المرور';

  @override
  String get nameHint => 'ادخل اسمك بالكامل';

  @override
  String get emailHint => 'ادخل البريد الإلكتروني';

  @override
  String get passwordHint => 'ادخل كلمة المرور';

  @override
  String get passConfirmHint => 'أعد كتابة كلمة المرور';

  @override
  String get full_name => 'الاسم الكامل';

  @override
  String get password_confirmation => 'تأكيد كلمة المرور';
}
