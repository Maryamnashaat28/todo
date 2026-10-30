import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:to_do_app/core/routes_manage/Routes.dart';
import 'package:to_do_app/features/auth/login/LoginScreen.dart';
import 'package:to_do_app/features/auth/register/RegisterScreen.dart';
import 'package:to_do_app/style/AppStyle.dart';
import 'l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
 const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates:
          [
          AppLocalizations.delegate,
            ...GlobalMaterialLocalizations.delegates,
          ],
      supportedLocales: [
        Locale("en"),
        Locale("ar")
      ],
      locale: Locale("ar"),
      title: 'Flutter Demo',
      theme: AppStyle.lightTheme,
   initialRoute: Routes.registerRoute,
   routes: {
Routes.loginRoute:(_)=>LoginScreen(),
     Routes.registerRoute:(_)=>RegisterScreen(),

   },
   //   home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
