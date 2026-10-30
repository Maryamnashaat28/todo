import 'dart:ffi';

import 'package:flutter/material.dart';
typedef FormFieldFunction = Void Function();
typedef ValidationFunction =String? Function(String?);
class CustomTextFormField extends StatefulWidget {
  TextEditingController controller;
 //FormFieldFunction onTap ;
 ValidationFunction validate;
 TextInputType kboardType;
 bool isPassword;
 bool isObscure;
String hintTxt;
   CustomTextFormField({super.key,this.isObscure=true,this.isPassword=false,required this.controller,
required this.hintTxt,
     //required this.onTap,
     required this.validate,required this.kboardType});
  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}
class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(

  controller:widget.controller ,
      //onTap: widget.onTap,
      validator: widget.validate,
       keyboardType: widget.kboardType,
      obscureText:widget.isPassword?widget.isObscure:false,
      obscuringCharacter: "*",

      decoration: InputDecoration(
hintText:widget.hintTxt ,
        suffixIcon:widget.isPassword? IconButton(onPressed: (){
          setState(() {
            widget.isObscure = !widget.isObscure;
          });
        }, icon:  Icon(widget.isObscure?Icons.visibility_off_outlined:Icons.visibility_outlined)):null
      ),
    );
  }
}
