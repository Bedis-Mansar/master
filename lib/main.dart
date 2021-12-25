import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_pages/pages/amphi/bookingformamphi.dart';
import 'package:my_pages/pages/amphi/mainamphi.dart';
import 'package:my_pages/pages/amphi/pagetimeamphi.dart';
import 'package:my_pages/pages/classes/bookingformclass.dart';
import 'package:my_pages/pages/classes/mainclass.dart';
import 'package:my_pages/pages/classes/pagetimeclass.dart';
import 'package:my_pages/pages/materials/bookingformmat.dart';
import 'package:my_pages/pages/materials/mainmat.dart';
import 'package:my_pages/pages/materials/pagetimematerials.dart';
import 'package:my_pages/screens/drawer.dart';
import 'package:my_pages/screens/help_page.dart';
import 'package:my_pages/screens/lists.dart';
import 'package:my_pages/screens/settings.dart';
import 'package:my_pages/screens/time_tables.dart';
import 'package:my_pages/splash_screen.dart';
import 'package:my_pages/student.dart';
import 'package:my_pages/teacher.dart';
import 'package:my_pages/Login_Page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  GlobalKey<ScaffoldState> _scaffoldKEy =  GlobalKey<ScaffoldState>();
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        '/menu': (context) => NavDrawer(),
        '/home': (context) => lists(),
        'helppage': (context) => Help(),
        'settings': (context) => Settings(),
        'timetables': (context) => TimeTables(),

        '/avclass': (context) => mainclasses(),
        '/avmat': (context) => mainmat(),
        '/avamphi': (context) => mainamphi(),
        '/time_class': (context) => Pagetimeclass(),
        '/time_amphi': (context) => Pagetimeamphi(),
        '/time_materials': (context) => Pagetimematerials(),
        '/Bookamphi': (context) => Bookamphi(),
        '/Bookclass': (context) => Bookclass(),
        '/Bookmat': (context) => Bookmat(),
        '/login':(context) => LoginPage(),

      },
    );
  }
}