import 'package:flutter/material.dart';
import 'package:tutorial1/presentation/UI/global/background.dart';
import 'package:tutorial1/presentation/UI/global/header.dart';
import 'package:tutorial1/presentation/UI/global/questionpanel.dart';
import 'package:tutorial1/presentation/UI/global/roundedbutton.dart';
import 'package:tutorial1/presentation/UI/global/roundedtextfield.dart';
import 'package:tutorial1/presentation/UI/global/textfieldcontainer.dart';

class Body extends StatelessWidget {
  final TextEditingController username;
  final TextEditingController password1;
  final TextEditingController password2;
  final TextEditingController beepCardController;

  final Function toLoginPage;
  final Function addUser;

  const Body(
      {Key key,
      this.toLoginPage,
      this.username,
      this.password1,
      this.password2,
      this.addUser,
      this.beepCardController});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Positioned(
        top: size.height * 0.150,
        width: size.width,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Header(
                textHeader: 'REGISTER',
                width: 30,
              ),
              SizedBox(
                height: size.height * 0.1,
              ),
              Column(
                children: <Widget>[
                  TextFieldContainer(
                    child: RoundedTextField(
                      myController: username,
                      isObscure: false,
                      hintText: 'Enter Username',
                      icon: Icons.person,
                    ),
                  ),
                  TextFieldContainer(
                    child: RoundedTextField(
                        myController: beepCardController,
                        isObscure: false,
                        hintText: 'Enter SMS Code',
                        icon: Icons.message),
                  ),
                  TextFieldContainer(
                    child: RoundedTextField(
                      myController: password1,
                      isObscure: true,
                      hintText: 'Enter Password',
                      icon: Icons.enhanced_encryption,
                    ),
                  ),
                  TextFieldContainer(
                    child: RoundedTextField(
                      myController: password2,
                      isObscure: true,
                      hintText: 'Re - Enter Password',
                      icon: Icons.enhanced_encryption,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.044,
                  ),
                  RoundedLogButton(
                    text: 'Register',
                    function: addUser,
                    color: Color(0xff42b883),
                    textColor: Colors.white,
                  ),
                ],
              ),
              QuestionPanel(
                text: 'Already Have an Account?',
                routeText: 'Login',
                function: toLoginPage,
              )
            ]),
      ),
    );
  }
}
