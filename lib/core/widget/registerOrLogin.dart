// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:to_do_app/core/widget/CustomAuthButton.dart';
//
// class RegisterOrLogin extends StatelessWidget {
//   onButtonClicked txtClick;
//   String txt1;
//   String txt2;
//   RegisterOrLogin({super.key,required this.txt2,required this.txt1,required this.txtClick});
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Flexible(child: Text(txt1,style: Theme.of(context).textTheme.labelSmall,textAlign: TextAlign.start)),
//         Flexible(child: TextButton(onPressed:txtClick , child: Text(txt2,textAlign: TextAlign.end,style: Theme.of(context).textTheme.bodyMedium,)))
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';

class RegisterOrLogin extends StatelessWidget {
  final VoidCallback txtClick;
  final String txt1;
  final String txt2;

  const RegisterOrLogin({
    super.key,
    required this.txt2,
    required this.txt1,
    required this.txtClick,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Flexible(
          child: Text(
            txt1,
            style: Theme.of(context).textTheme.labelSmall,
            textAlign: TextAlign.end,
          ),
        ), const SizedBox(width: 4),
        Flexible(
          child: TextButton(
            onPressed: txtClick,
            style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              minimumSize: Size.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            child: Text(
              txt2,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.start,
            ),
          ),
        ),
      ],
    );
  }
}
