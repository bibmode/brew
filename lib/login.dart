import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:scrapcycle_collector/formWidgets/loginform.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        // decoration: const BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage('assets/images/rotated.png'),

        //     fit: BoxFit.fitWidth,
        //     alignment: Alignment.topCenter,
        //   ),
        // ),

        child: Center(
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 100,
                color: Colors.greenAccent[200],
              ),
              Transform.rotate(
                angle: math.pi / 10.0,
                child: FractionallySizedBox(
                  widthFactor: 2,
                  heightFactor: 0.36,
                  child: Container(
                    color: Colors.greenAccent[200],
                  ),
                ),
              ),
              Center(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 100.0, bottom: 45.0),
                      child:
                          Image(image: AssetImage('assets/images/sclogo.png')),
                    ),
                    Stack(
                      children: [
                        Center(
                          child: Container(
                            width: 90,
                            height: 90,
                            margin: const EdgeInsets.only(top: 10.0),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const Center(
                          child: Icon(Icons.account_circle,
                              size: 120, color: Color(0xff27AE60)),
                        ),
                      ],
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
