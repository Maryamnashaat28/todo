import 'dart:core';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:to_do_app/l10n/app_localizations.dart';

class CustomAuthHeader extends StatelessWidget {
  String title;
  String subTitle;
   CustomAuthHeader({required this.title,required this.subTitle});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  REdgeInsets.symmetric(vertical: 40.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title,style: Theme.of(context).textTheme.headlineLarge),
       10.verticalSpace,
            Text(subTitle,style: Theme.of(context).textTheme.labelSmall,textAlign: TextAlign.center,)
        ],
      ),
    );
  }
}
