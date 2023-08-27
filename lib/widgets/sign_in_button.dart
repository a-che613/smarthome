import 'package:flutter/material.dart';
import 'package:smarthome/constants/colors.dart';

import '../features/authentication/presentation/screens/sign_in.dart';

class SignInButton extends StatelessWidget {
  final buttonColor;
  final textColor;
  const SignInButton({
    super.key, required this.buttonColor, required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const SignInPage()));
      },
      style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(buttonColor),
          padding: const MaterialStatePropertyAll(EdgeInsets.all(12)),
          shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)))),
      child: Text(
        'Sign In',
        style: TextStyle(color: textColor, fontSize: 16),
      ),
    );
  }
}
