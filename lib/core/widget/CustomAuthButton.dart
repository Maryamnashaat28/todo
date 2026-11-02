import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
typedef onButtonClicked = void Function();
class CustomAuthButton extends StatelessWidget {
  onButtonClicked clicked;
  String btnText;
   CustomAuthButton({super.key,required this.clicked,required this.btnText});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: clicked,
        style: ElevatedButton.styleFrom( backgroundColor: Theme.of(context).primaryColor,shape:
        RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.all(Radius.circular(20.r))),
         padding: REdgeInsets.symmetric(vertical: 23),
        ),
        child:Text(btnText,style: Theme.of(context).textTheme.titleLarge,) );
  }
}
