import 'package:flutter/material.dart';
import 'package:tutorial1/presentation/UI/loginpage/pages/loginpage.dart';
import 'package:tutorial1/presentation/UI/registrationpage/components/body.dart';

class RegistrationPage extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController passwordController1 = TextEditingController();
    TextEditingController beepCardController = TextEditingController();

    return Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/image/background1.png"),
              fit: BoxFit.cover),
        ),
        child: Body(
          username: usernameController,
          password1: passwordController,
          password2: passwordController1,
          beepCardController: beepCardController,
          toLoginPage: () {
            navigationToLoginPage(context);
          },
          addUser: () {
            addUser();
          },
        ),
      ),
    );
  }

  void navigationToLoginPage(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LoginPage();
    }));
  }

  void addUser() {}
}

// MainAxisAlignment - Horizontal
// CrossAxisAlignment - Vertical
