import 'package:final_project_ui/screens/screen3.dart';
import 'package:flutter/material.dart';

class Screen4 extends StatelessWidget {
  static String routeName = '/screen4';
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
            child: Stack(
          children: [
            Expanded(
                flex: 6,
                child: Stack(
                  children: [
                    Expanded(
                      child: Image.asset(
                        'assets/images/nightstands.jpg',
                        height: 300,
                        width: 500,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                            alignment: Alignment.topLeft,
                            child: Stack(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, Screen3.routeName);
                                  },
                                  iconSize: 25,
                                  splashRadius: 5,
                                  icon: Image.asset(
                                    'assets/images/icon-06.png',
                                  ),
                                ),
                              ],
                            )),
                        Container(
                          alignment: Alignment.bottomRight,
                          child: Image.asset(
                            'assets/images/icon-07.png',
                            height: 1000,
                            width: 200,
                          ),
                        ),
                      ],
                    )
                  ],
                )),
            Expanded(
                flex: 4,
                child: Container(
                    child: Stack(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 310,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 19),
                          child: Text(
                            'Night Stand',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 30),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 350,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            'Night Stands',
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 370,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 30),
                          child: Text(
                            '\$140.-',
                            style: TextStyle(
                                color: Color(0xFF7a95cc),
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 415,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 30),
                          child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing\nelit, sed diam nonummy nibh euismod tincidunt ut\nlaoreet dolore magna aliquam erat volutpat.',
                            style: TextStyle(letterSpacing: 0.8),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 490,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Quantity'),
                              Padding(
                                padding: EdgeInsets.only(right: 255),
                                child: Text('Colors'),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 520,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: 0,
                              ),
                              child: CounterScreenState(),
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                side: BorderSide(color: Colors.grey),
                                backgroundColor: Colors.white,
                                shape: CircleBorder(),
                              ),
                              onPressed: () {},
                              child: Text(''),
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                side: BorderSide(color: Colors.grey),
                                backgroundColor: Color(0xFFeeacdb),
                                shape: CircleBorder(),
                              ),
                              onPressed: () {},
                              child: Text(''),
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                side: BorderSide(color: Colors.grey),
                                backgroundColor: Color(0xFF16b692),
                                shape: CircleBorder(),
                              ),
                              onPressed: () {},
                              child: Text(''),
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                side: BorderSide(color: Colors.grey),
                                backgroundColor: Color(0xFF019cff),
                                shape: CircleBorder(),
                              ),
                              onPressed: () {},
                              child: Text(''),
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                side: BorderSide(color: Colors.grey),
                                backgroundColor: Colors.black,
                                shape: CircleBorder(),
                              ),
                              onPressed: () {},
                              child: Text(''),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                )))
          ],
        )),
      ],
    ));
  }
}

class CounterScreenState extends StatefulWidget {
  CounterScreen createState() => CounterScreen();
}

class CounterScreen extends State<CounterScreenState> {
  int numOfItems = 1;
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlineButton(
          icon: Icons.add,
          press: () {
            setState(() {
              numOfItems++;
            });
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          child: Text(
            numOfItems.toString().padLeft(2, '0'),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildOutlineButton(
          icon: Icons.remove,
          press: () {
            if (numOfItems > 1) {
              setState(() {
                numOfItems--;
              });
            }
          },
        ),
      ],
    );
  }

  SizedBox buildOutlineButton({IconData? icon, VoidCallback? press}) {
    return SizedBox(
      height: 40,
      width: 32,
      child: TextButton(
          style: TextButton.styleFrom(
            side: BorderSide(color: Colors.black),
            primary: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          onPressed: press,
          child: Icon(icon)),
    );
  }
}
