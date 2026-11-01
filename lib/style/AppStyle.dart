import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:to_do_app/core/resources/ColorManager.dart';
class AppStyle {
 static ThemeData lightTheme = ThemeData(
   scaffoldBackgroundColor: ColorManager.secondaryColor,
     colorScheme: ColorScheme.light(
        onSecondary: ColorManager.textColor,
         primary: ColorManager.primaryColor,
     secondary: ColorManager.secondaryColor),
     useMaterial3: true,
     textTheme: TextTheme(
       headlineLarge: TextStyle(
         fontSize: 24.sp,
         fontWeight: FontWeight.bold,
         color: Colors.black,
       ),
       labelMedium: TextStyle(
         fontSize: 20.sp,
         fontWeight: FontWeight.bold,
         color: Colors.black,
       ),labelSmall: TextStyle(
         fontSize: 20.sp,
         fontWeight: FontWeight.w600,
         color: ColorManager.textColor,
       ),
     ),
 inputDecorationTheme: InputDecorationTheme(
   floatingLabelStyle: TextStyle(
     fontSize: 23.sp,
     fontWeight: FontWeight.bold,
     color: Colors.black,
   ),
   floatingLabelBehavior: FloatingLabelBehavior.always,
   filled: true,
   fillColor: ColorManager.secondaryColor,
     disabledBorder: OutlineInputBorder(

       borderSide: BorderSide.none,
       borderRadius: BorderRadius.all(Radius.circular(18.r))
     ),
     //lma ykon fi error w focused fnfs el w2t
     focusedErrorBorder: OutlineInputBorder(
       borderRadius: BorderRadius.all(Radius.circular(18.r)),
       borderSide: BorderSide(color: Colors.red,width: 1.2),
     ),

    hintStyle: TextStyle(
      color: ColorManager.textColor,
      fontSize: 16.sp,
      fontWeight: FontWeight.w600
    ),
   //lma ykon fi validation error
   errorBorder: OutlineInputBorder(
     borderRadius: BorderRadius.all(Radius.circular(18.r)),
     borderSide: BorderSide(color: Colors.red,width: 1.w,),
   ),
   //dah el border el 3adi
   border: OutlineInputBorder(
       borderSide:BorderSide.none,
      borderRadius: BorderRadius.all(Radius.circular(18.r)),

   ),
   contentPadding: REdgeInsets.all(23),
errorStyle: TextStyle(
  color: Colors.red,
  fontSize: 12.sp
),

prefixIconColor: ColorManager.textColor,
   suffixIconColor: ColorManager.textColor,
   enabledBorder: OutlineInputBorder(
   borderSide: BorderSide.none,
     borderRadius: BorderRadius.all(Radius.circular(18.r)),
   ),
   //lma ykon focused
   focusedBorder: OutlineInputBorder(gapPadding: 10.r,
      borderRadius: BorderRadius.all(Radius.circular(18.r)),
      borderSide: BorderSide.none,

   ),

     )
  );
}