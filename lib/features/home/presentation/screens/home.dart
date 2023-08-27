import 'package:flutter/material.dart';
import 'package:smarthome/constants/colors.dart';
import 'package:smarthome/widgets/sign_in_button.dart';

import '../../../../constants/images.dart';
import '../../../../widgets/get_started.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image:
            DecorationImage(image: AssetImage(homeImage1), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          children: [
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 19,
                  children: const [
                    Text(
                      'Control your home',
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Control all your smart home devices and enjoy your life',
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(children: const [
              Expanded(
                child: GetStartedButton(),
              ),
            ]),
            const SizedBox(
              height: 13,
            ),
            Row(children: const [
              Expanded(
                child: SignInButton(
                  buttonColor: signInButtonWhite,
                  textColor: signInText,
                ),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
