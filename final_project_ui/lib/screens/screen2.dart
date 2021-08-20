import 'package:final_project_ui/screens/screen3.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  static String routeName = '/screen2';
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          Image.asset(
            'assets/images/icon-08.png',
            height: 130,
            width: 130,
          ),
          Text('Find your',
              style: TextStyle(
                  letterSpacing: 0.8,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Color(0xFF383838))),
          Text('unique piece!',
              style: TextStyle(
                  letterSpacing: 0.8,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Color(0xFF383838))),
          SizedBox(
            height: 10,
          ),
          Text(
            'Join us,',
            style: TextStyle(
              color: Color(0xFF383838),
              letterSpacing: 0.8,
            ),
          ),
          Column(
            children: [
              Padding(
                padding:
                    EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 5),
                child: Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: 'E-mail',
                        hintText: 'Enter your email',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Color(0xFFd3d3d3)),
                        )),
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 40, right: 40, top: 15, bottom: 10),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        gapPadding: 10,
                        borderSide: BorderSide(color: Color(0xFFd3d3d3)),
                      )),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 50,
                width: 250,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Screen3.routeName);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF7a95cc),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    elevation: 5,
                  ),
                  child: Text(
                    'Create Account',
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
                height: 15,
              ),
              Text(
                'Sign up with',
                style: TextStyle(
                  color: Color(0xFF383838),
                  letterSpacing: 0.8,
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Image.asset(
                  'assets/images/icon-01.png',
                  height: 80,
                  width: 80,
                ),
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
          ),
        ],
      ),
    ));
  }
}
