import 'package:flutter/material.dart';
import 'package:tutorial1/presentation/UI/global/background.dart';
import 'package:tutorial1/presentation/UI/global/header.dart';
import 'package:tutorial1/presentation/UI/global/questionpanel.dart';
import 'package:tutorial1/presentation/UI/global/roundedbutton.dart';
import 'package:tutorial1/presentation/UI/global/roundedtextfield.dart';
import 'package:tutorial1/presentation/UI/global/textfieldcontainer.dart';
import 'package:tutorial1/presentation/UI/loginpage/components/containerline.dart';
import 'package:tutorial1/presentation/UI/loginpage/components/socialmediabutton.dart';

class Body extends StatelessWidget {
  final TextEditingController loginForm;
  final TextEditingController passwordForm;

  final Function registerView;
  final Function checkUser;
  final Function checkFacebookUser;

  const Body(
      {Key key,
      this.loginForm,
      this.passwordForm,
      this.registerView,
      this.checkUser,
      this.checkFacebookUser})
      : super(key: key);

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
              textHeader: 'LOGIN',
              width: 60,
            ),
            SizedBox(
              height: size.height * 0.150,
            ),
            Column(
              children: <Widget>[
                TextFieldContainer(
                  child: RoundedTextField(
                    validFunction: (val) =>
                        val.isEmpty ? 'Enter a Username' : null,
                    isObscure: false,
                    myController: loginForm,
                    hintText: 'Enter Username',
                    icon: Icons.person,
                  ),
                ),
                TextFieldContainer(
                  child: RoundedTextField(
                    validFunction: (val) => val.length < 6
                        ? 'Password must be 6 characters long'
                        : null,
                    isObscure: true,
                    hintText: 'Enter Password',
                    myController: passwordForm,
                    icon: Icons.lock,
                  ),
                ),
                RoundedLogButton(
                  text: 'LOGIN',
                  function: checkUser,
                  color: Color(0xff42b883),
                  textColor: Colors.white,
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: FlatButton(
                onPressed: checkFacebookUser,
                child: Text('Forgot Password?'),
              ),
            ),
            ContainerLine(),
            SocialMediaButton(
              text: 'Login With Facebook',
              function: () {},
              color: Color(0xff4267B2),
              textColor: Colors.white,
              icon: Icon(Icons.face),
            ),
            QuestionPanel(
              text: 'Dont Have an Account yet?',
              routeText: 'Register',
              function: registerView,
            ),
          ],
        ),
      ),
    );
  }
}
