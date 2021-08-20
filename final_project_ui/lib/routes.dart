import 'package:final_project_ui/screens/screen1.dart';
import 'package:final_project_ui/screens/screen2.dart';
import 'package:final_project_ui/screens/screen3.dart';
import 'package:final_project_ui/screens/screen4.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = {
  Screen1.routeName: (context) => Screen1(),
  Screen2.routeName: (context) => Screen2(),
  Screen3.routeName: (context) => Screen3(),
  Screen4.routeName: (context) => Screen4(),
};
