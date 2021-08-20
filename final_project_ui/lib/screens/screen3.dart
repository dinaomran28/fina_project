import 'package:final_project_ui/screens/screen4.dart';
import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  static String routeName = '/screen3';

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Commerce',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
        ),
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            leading: Transform.translate(
              offset: Offset(0, 0),
              child: Image.asset(
                'assets/images/icon-04.png',
              ),
            ),
            elevation: 0,
            title: Transform.translate(
              offset: Offset(-20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 0.8,
                      fontSize: 20,
                    ),
                  ),
                  Image.asset(
                    'assets/images/icon-05.png',
                    height: 20,
                    width: 20,
                  ),
                ],
              ),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(60),
              child: TabBar(
                isScrollable: true,
                unselectedLabelColor: Colors.grey,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                tabs: [
                  Tab(
                    child: Container(
                      height: 25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          )),
                      child: Align(
                          alignment: Alignment.center,
                          child: Row(
                            children: [
                              Image.asset('assets/images/icon-03.png'),
                              Text(
                                'Price Range   ',
                                style: TextStyle(
                                    color: Colors.grey, letterSpacing: 0.9),
                              ),
                            ],
                          )),
                    ),
                  ),
                  Tab(
                    child: Container(
                      height: 25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          )),
                      child: Align(
                          alignment: Alignment.center,
                          child: Row(
                            children: [
                              Image.asset('assets/images/icon-03.png'),
                              Text(
                                'Tags   ',
                                style: TextStyle(
                                    color: Colors.grey, letterSpacing: 0.9),
                              ),
                            ],
                          )),
                    ),
                  ),
                  Tab(
                    child: Container(
                      height: 25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          )),
                      child: Align(
                          alignment: Alignment.center,
                          child: Row(
                            children: [
                              Image.asset('assets/images/icon-03.png'),
                              Text(
                                'Style   ',
                                style: TextStyle(
                                    color: Colors.grey, letterSpacing: 0.9),
                              ),
                            ],
                          )),
                    ),
                  ),
                  Tab(
                    child: Container(
                      height: 25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          )),
                      child: Align(
                          alignment: Alignment.center,
                          child: Row(
                            children: [
                              Image.asset('assets/images/icon-03.png'),
                              Text(
                                'Color   ',
                                style: TextStyle(
                                    color: Colors.grey, letterSpacing: 0.9),
                              ),
                            ],
                          )),
                    ),
                  )
                ],
              ),
            ),
          ),
          body: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Padding(
                  padding: EdgeInsets.all(10),
                  child: GridView.count(
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      crossAxisCount: 2,
                      children: [
                        Container(
                            child: Stack(
                          children: [
                            Image.asset(
                              'assets/images/chairs.jpeg',
                              fit: BoxFit.cover,
                              width: 500,
                              height: 500,
                            ),
                            Stack(
                              children: [
                                Container(
                                    alignment: Alignment.topLeft,
                                    child: Stack(
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          iconSize: 40,
                                          splashRadius: 5,
                                          icon: Image.asset(
                                            'assets/images/icon-02.png',
                                          ),
                                        ),
                                      ],
                                    )),
                                Container(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Text(
                                        'Chairs\n',
                                      ),
                                    )),
                                Container(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Row(
                                      children: [
                                        Text('from '),
                                        Text(
                                          '\$190.-',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                        Container(
                            child: Stack(
                          children: [
                            Image.asset(
                              'assets/images/nightstands.jpg',
                              fit: BoxFit.cover,
                              width: 500,
                              height: 500,
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
                                                context, Screen4.routeName);
                                          },
                                          iconSize: 40,
                                          splashRadius: 5,
                                          icon: Image.asset(
                                            'assets/images/icon-02.png',
                                          ),
                                        ),
                                      ],
                                    )),
                                Container(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Text(
                                        'Night Stands\n',
                                      ),
                                    )),
                                Container(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Row(
                                      children: [
                                        Text('from '),
                                        Text(
                                          '\$140.-',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                        Container(
                            child: Stack(
                          children: [
                            Image.asset(
                              'assets/images/sofas.jpeg',
                              fit: BoxFit.cover,
                              width: 500,
                              height: 500,
                            ),
                            Stack(
                              children: [
                                Container(
                                    alignment: Alignment.topLeft,
                                    child: Stack(
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          iconSize: 40,
                                          splashRadius: 5,
                                          icon: Image.asset(
                                            'assets/images/icon-02.png',
                                          ),
                                        ),
                                      ],
                                    )),
                                Container(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Text(
                                        'Sofas\n',
                                      ),
                                    )),
                                Container(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Row(
                                      children: [
                                        Text('from '),
                                        Text(
                                          '\$420.-',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                        Container(
                            child: Stack(
                          children: [
                            Image.asset(
                              'assets/images/desks.jpeg',
                              fit: BoxFit.cover,
                              width: 500,
                              height: 500,
                            ),
                            Stack(
                              children: [
                                Container(
                                    alignment: Alignment.topLeft,
                                    child: Stack(
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          iconSize: 40,
                                          splashRadius: 5,
                                          icon: Image.asset(
                                            'assets/images/icon-02.png',
                                          ),
                                        ),
                                      ],
                                    )),
                                Container(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Text(
                                        'Desks\n',
                                      ),
                                    )),
                                Container(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Row(
                                      children: [
                                        Text('from '),
                                        Text(
                                          '\$320.-',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ))
                      ])),
              SizedBox(
                height: 50,
                width: 250,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF7a95cc),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Text(
                    'Scan my Space',
                    style: TextStyle(
                      letterSpacing: 0.8,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
