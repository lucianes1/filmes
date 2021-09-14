import 'package:filmes/modules/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:get/get.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.topCenter,
      children: [
        Image.asset(
          'assets/images/background.png',
          width: Get.width,
          height: Get.height,
          fit: BoxFit.cover,
        ),
        Container(
          color: Colors.black.withOpacity(0.5),
        ),
        Padding(
          padding: EdgeInsets.only(top: 80.0),
          child: Column(
            children: [
              Image.asset('assets/images/logo.png'),
              SizedBox(height: 50),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                width: Get.width,
                height: 42,
                child: SignInButton(
                  Buttons.Google,
                  text: 'Entrar com Google',
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)),
                  onPressed: () {
                    controller.login();
                  },
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
