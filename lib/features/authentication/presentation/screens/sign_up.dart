import 'package:flutter/material.dart';
import 'package:smarthome/constants/images.dart';
import 'package:smarthome/widgets/get_started.dart';

import '../../../../widgets/textfields.dart';
import 'sign_in.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          // scrollDirection: Axis.vertical,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(homeImage1), fit: BoxFit.cover),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(25, 20, 25, 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Wrap(children: const [
                          Text(
                            'New Account',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        ]),
                      ),
                      Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.grey, width: 2),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              IconButton(
                                padding: const EdgeInsets.all(0),
                                onPressed: () {
                                  print('icon button clicked');
                                },
                                icon: const Icon(Icons.camera_alt),
                              ),
                              const Text(
                                'Upload',
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          ))
                    ],
                  ),
                  const SizedBox(height: 20),
                  Form(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        EmailTextField(hint: 'Email'),
                        SizedBox(height: 20),
                        FirstNameTextField(hint: 'First Name'),
                        SizedBox(height: 20),
                        PasswordTextField(hint: 'Password'),
                        SizedBox(height: 20),
                        Text(
                            'You have agreed to our Terms Of Service when you continue to sign up.'),
                        SizedBox(height: 20)
                      ],
                    ),
                  ),
                  Row(children: const [
                    Expanded(child: SignUpButton()),
                  ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Already have an account?'),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const SignInPage()));
                          },
                          child: const Text('Sign In'))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
