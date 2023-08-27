import 'package:flutter/material.dart';

class EmailTextField extends StatelessWidget {
  final String hint;
  const EmailTextField({
    super.key, required this.hint
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hint,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(14)
        ),
        contentPadding: const EdgeInsets.all(14)
      ),
    );
  }
}

class FirstNameTextField extends StatelessWidget {
  final String hint;
  const FirstNameTextField({
    super.key, required this.hint
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hint,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(14)
        ),
        contentPadding: const EdgeInsets.all(14)
      ),
    );
  }
}


class PasswordTextField extends StatelessWidget {
  final String hint;
  const PasswordTextField({
    super.key, required this.hint
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hint,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(14)
        ),
        contentPadding: const EdgeInsets.all(14)
      ),
    );
  }
}