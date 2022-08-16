import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:scrapcycle_collector/formWidgets/loginform.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,ggf
      body: SingleChildScrollView(
        child: Center(
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                color: Color(0xff84E3AC),
              ),
              const SizedBox(
                width: double.infinity,
                child: Image(
                  image: AssetImage('assets/images/loginstyle.png'),
                  fit: BoxFit.cover,
                ),
              ),
              Center(
                child: Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 100.0, bottom: 230.0),
                      child:
                          Image(image: AssetImage('assets/images/sclogo.png')),
                    ),
                    LoginForm(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
