import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:to_do_app/core/resources/ConstantsManager.dart';
import 'package:to_do_app/core/routes_manage/Routes.dart';
import 'package:to_do_app/core/widget/CustomAuthButton.dart';
import 'package:to_do_app/core/widget/CustomAuthHeader.dart';
import 'package:to_do_app/core/widget/CustomTextformField.dart';
import 'package:to_do_app/l10n/app_localizations.dart';

import '../../../core/widget/registerOrLogin.dart';

class RegisterScreen extends StatelessWidget{
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmController = TextEditingController();
  @override
  Widget build(BuildContext context){
    return Scaffold(
body:
SafeArea(
  child: SingleChildScrollView(
    child: Padding(
      padding:  REdgeInsets.only(left: 35,right: 35,),
      child:
       Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomAuthHeader(title: AppLocalizations.of(context)!.create_account, subTitle:AppLocalizations.of(context)!.signupHeader),
           // 30.verticalSpace,
            Container(
              padding: REdgeInsets.all(25),
              width: double.infinity,
            //  height: 680.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.r)),
                color: Colors.white,
              ),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
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
                      }, kboardType: TextInputType.visiblePassword),
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
                      }, kboardType: TextInputType.visiblePassword),
                  40.verticalSpace,
                  CustomAuthButton(clicked: (){}, btnText: AppLocalizations.of(context)!.create_account)
                ],
              ),
            ),
            30.verticalSpace,
            RegisterOrLogin(txt1:  AppLocalizations.of(context)!.signInTxt ,txt2: AppLocalizations.of(context)!.login,txtClick: (){
              Navigator.pushReplacementNamed(context, Routes.loginRoute);})
          ],
        ),
      ),
  ),
),

    );
  }


}