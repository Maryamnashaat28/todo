// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get email => 'Email Address';

  @override
  String get password => 'Password';

  @override
  String get nameHint => 'Enter your full name';

  @override
  String get emailHint => 'Enter your Email Address';

  @override
  String get passwordHint => 'Enter your password';

  @override
  String get passConfirmHint => 'Confirm your password';

  @override
  String get full_name => 'Full Name';

  @override
  String get password_confirmation => 'Password Confirmation';

  @override
  String get welcome => 'Welcome back';

  @override
  String get loginHeader =>
      'Log in to continue managing your daily\nflow and tasks.';

  @override
  String get signupHeader =>
      'Join FlowDo to organize your daily priorities and\nstreamline your workflow.';

  @override
  String get login => 'Log In';

  @override
  String get signup => 'Sign up';

  @override
  String get create_account => 'Create Account';

  @override
  String get signInTxt => 'Already have an account?';

  @override
  String get signUpTxt => 'Don\'t have an account?';
}
