import 'package:flutter/material.dart';
import 'package:tutorial1/presentation/UI/homepage/components/body.dart';
import 'package:tutorial1/presentation/UI/loginpage/pages/loginpage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async => null,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xff42b883),
          title: Text('Drivelink'),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  navigationToLoginPage(context);
                })
          ],
        ),
        body: Body(),
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
