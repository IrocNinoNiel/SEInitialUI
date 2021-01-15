import 'package:flutter/material.dart';
import 'package:tutorial1/presentation/UI/global/background.dart';
import 'package:tutorial1/presentation/UI/global/header.dart';
import 'package:tutorial1/presentation/UI/global/roundedbutton.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Positioned(
        top: size.height * 0.010,
        width: size.width,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  RaisedButton(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    onPressed: () {},
                    textColor: Colors.white,
                    color: Color(0xff42b883),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(29),
                        side: BorderSide(
                          color: Colors.white,
                        )),
                    child: Center(
                      child: Text(
                        'Edit Profile',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  RaisedButton(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    onPressed: () {},
                    textColor: Colors.white,
                    color: Color(0xff42b883),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(29),
                        side: BorderSide(
                          color: Colors.white,
                        )),
                    child: Center(
                      child: Text(
                        'View History',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.1,
              ),
              Header(
                textHeader: 'MENU ',
                width: 30,
              ),
              SizedBox(
                height: size.height * 0.1,
              ),
              Column(
                children: <Widget>[
                  RoundedLogButton(
                    text: 'From',
                    function: () {},
                    color: Colors.white,
                    textColor: Color(0xff42b883),
                  ),
                  SizedBox(
                    height: size.height * 0.024,
                  ),
                  RoundedLogButton(
                    text: 'To',
                    function: () {},
                    color: Colors.white,
                    textColor: Color(0xff42b883),
                  ),
                  SizedBox(
                    height: size.height * 0.054,
                  ),
                  RoundedLogButton(
                    text: 'GO',
                    function: () {},
                    color: Color(0xff42b883),
                    textColor: Colors.white,
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}
