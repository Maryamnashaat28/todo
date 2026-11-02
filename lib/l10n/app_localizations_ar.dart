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

  @override
  String get welcome => 'أهلاً بك';

  @override
  String get loginHeader =>
      'Log in to continue managing your daily\nflow and tasks.';

  @override
  String get signupHeader =>
      'Join FlowDo to organize your daily priorities and\nstreamline your workflow.';

  @override
  String get login => 'تسجيل دخول ';

  @override
  String get signup => 'إنشاء حساب';

  @override
  String get create_account => 'إنشاء حساب';

  @override
  String get signInTxt => 'لديك حساب بالفعل؟';

  @override
  String get signUpTxt => 'ليس لديك حساب؟';
}
