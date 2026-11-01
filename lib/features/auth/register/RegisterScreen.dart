import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:to_do_app/core/resources/ConstantsManager.dart';
import 'package:to_do_app/core/widget/CustomAuthHeader.dart';
import 'package:to_do_app/core/widget/CustomTextformField.dart';
import 'package:to_do_app/l10n/app_localizations.dart';
TextEditingController nameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
TextEditingController passwordConfirmController = TextEditingController();
class RegisterScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
body:Padding(
  padding:  REdgeInsets.all(35),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      CustomAuthHeader(title: AppLocalizations.of(context)!.welcome, subTitle:AppLocalizations.of(context)!.loginText),
      Container(
        padding: REdgeInsets.all(25),
        width: double.infinity,
        height: 700.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20.r)),
          color: Colors.white,
        ),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(AppLocalizations.of(context)!.full_name,
            style: Theme.of(context).textTheme.labelMedium),
            8.verticalSpace,
            CustomTextFormField(controller: nameController,
                hintTxt: AppLocalizations.of(context)!.nameHint,
                //label:AppLocalizations.of(context)!.email,
                validate: (value){
                  if(value==null || value.isEmpty){
                    return  "Please enter ur full name";
                  }
                }, kboardType: TextInputType.name),
            15.verticalSpace,
            Text(AppLocalizations.of(context)!.email,
                style: Theme.of(context).textTheme.labelMedium),
            8.verticalSpace,
            CustomTextFormField(controller: emailController,
                hintTxt: AppLocalizations.of(context)!.emailHint,
                //label:AppLocalizations.of(context)!.email,
                validate: (value){
                  if(value==null || value.isEmpty){
                    return  "Please enter ur email";
                  }if(AppConstants.isValidEmail(value)== false){
                     return "Please enter a valid email";
                  }
                }, kboardType: TextInputType.emailAddress),
            15.verticalSpace,
            Text(AppLocalizations.of(context)!.password,
                style: Theme.of(context).textTheme.labelMedium),
            8.verticalSpace,
            CustomTextFormField(controller: passwordController,
                hintTxt: AppLocalizations.of(context)!.passwordHint,
                //label:AppLocalizations.of(context)!.email,
                isPassword: true,
                validate: (value){
                  if(value==null || value.isEmpty){
                    return  "Please enter your password";
                  }if(value.length<8){
                    return "Password should bs at least 8";
                  }
                }, kboardType: TextInputType.name),
            15.verticalSpace,
            Text(AppLocalizations.of(context)!.password_confirmation,
                style: Theme.of(context).textTheme.labelMedium),
            8.verticalSpace,
            CustomTextFormField(controller: passwordConfirmController,
                isPassword: true,
                hintTxt: AppLocalizations.of(context)!.passConfirmHint,
                //label:AppLocalizations.of(context)!.email,
                validate: (value){
                  if(value==null || value.isEmpty){
                    return  "Please enter same password";
                  }
                  //.text htrg3li el klam eli mktob belzbt bs .toString() htrg3li shwit baiant 3n el text
                  if(passwordController.text != value){
                    return "Should be same as password";
                  }
                }, kboardType: TextInputType.name),
          ],
        ),
      )
    ],
  ),
)
    );
  }


}