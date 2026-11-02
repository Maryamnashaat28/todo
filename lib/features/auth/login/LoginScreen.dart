import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

import '../../../core/resources/ConstantsManager.dart';
import '../../../core/routes_manage/Routes.dart';
import '../../../core/widget/CustomAuthButton.dart';
import '../../../core/widget/CustomAuthHeader.dart';
import '../../../core/widget/CustomTextformField.dart';
import '../../../core/widget/registerOrLogin.dart';
import '../../../l10n/app_localizations.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding:REdgeInsets.only(left: 35,right: 35,top: 24),
              child:
               Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomAuthHeader(title: AppLocalizations.of(context)!.welcome,
                        subTitle:AppLocalizations.of(context)!.loginHeader),
                     30.verticalSpace,
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
                          Text(AppLocalizations.of(context)!.email,
                              style: Theme.of(context).textTheme.labelMedium),
                          15.verticalSpace,
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
                          35.verticalSpace,
                          Text(AppLocalizations.of(context)!.password,
                              style: Theme.of(context).textTheme.labelMedium),
                          15.verticalSpace,
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
                          40.verticalSpace,
                          CustomAuthButton(clicked: (){}, btnText: AppLocalizations.of(context)!.login)
                        ],
                      ),
                    ),
                    60.verticalSpace,
                    RegisterOrLogin(txt1:  AppLocalizations.of(context)!.signUpTxt,
                        txt2: AppLocalizations.of(context)!.signup,txtClick: (){
                      Navigator.pushReplacementNamed(context, Routes.registerRoute);})
                  ],
                ),
              ),
          ),
        ),

    );
  }
}
