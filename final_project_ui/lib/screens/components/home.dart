import 'package:final_project_ui/screens/screen2.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Home> {
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Decor &',
                    style: TextStyle(
                        letterSpacing: 0.8,
                        fontFamily: 'Tahoma',
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Color(0xFF383838)),
                  ),
                  Text('enjoy!',
                      style: TextStyle(
                          letterSpacing: 0.8,
                          fontFamily: 'Tahoma',
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Color(0xFF383838))),
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    'assets/images/icon-09.png',
                    height: 265,
                    width: 260,
                  )
                ],
              ),
            ),
            Expanded(
                flex: 2,
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                      width: 170,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, Screen2.routeName);
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF7a95cc),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          elevation: 5,
                        ),
                        child: Text(
                          'Get started',
                          style: TextStyle(
                            letterSpacing: 0.8,
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Tahoma',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account? ',
                          style: TextStyle(
                            letterSpacing: 0.8,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Sign in',
                          style: TextStyle(
                            letterSpacing: 0.8,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
