import 'dart:core';
import 'package:flutter/material.dart';
import 'package:to_do_app/l10n/app_localizations.dart';

class CustomAuthHeader extends StatelessWidget {
  String title;
  String subTitle;
   CustomAuthHeader({required this.title,required this.subTitle});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(title,style: Theme.of(context).textTheme.headlineLarge),
        Text(subTitle,style: Theme.of(context).textTheme.labelSmall,)
      ],
    );
  }
}
