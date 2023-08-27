import 'package:flutter/material.dart';
import 'package:smarthome/constants/colors.dart';
import 'package:smarthome/features/authentication/presentation/screens/sign_up.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const SignUpPage())
        );
      },
      style: ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll(signUpButtonPurple),
        padding: const MaterialStatePropertyAll(EdgeInsets.all(12)),
        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14)
        ))
      ),
      child: const Text('Get Started', style: TextStyle(color: signUpText, fontSize: 16),),
    );
  }
}

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {print('sign up button clicked');},
      style: ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll(signUpButtonPurple),
        padding: const MaterialStatePropertyAll(EdgeInsets.all(12)),
        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14)
        ))
      ),
      child: const Text('Sign Up', style: TextStyle(color: signUpText, fontSize: 16),),
    );
  }
}
