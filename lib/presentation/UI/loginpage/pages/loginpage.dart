import 'package:flutter/material.dart';
import 'package:tutorial1/presentation/UI/homepage/pages/homepage.dart';
import 'package:tutorial1/presentation/UI/loginpage/components/body.dart';
import 'package:tutorial1/presentation/UI/registrationpage/pages/registrationpage.dart';

class LoginPage extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(
        loginForm: emailController,
        passwordForm: passwordController,
        registerView: () {
          navigationToRegisterPage(context);
        },
        checkUser: () {
          navigationToHomePage(context);
        },
        checkFacebookUser: () {},
      ),
    );
  }

  void navigationToRegisterPage(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return RegistrationPage();
    }));
  }

  void navigationToHomePage(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return HomePage();
    }));
  }
}

// MainAxisAlignment - Horizontal
// CrossAxisAlignment - Vertical
