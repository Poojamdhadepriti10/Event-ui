import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:connectivity_wrapper/connectivity_wrapper.dart';
import 'Screens/Home/Detail.dart';
import 'Screens/Home/Homepage.dart';
import 'Screens/Home/nav.dart';
import 'Screens/Login/login_screen.dart';
import 'Screens/Login/signup.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      // initTheme: kDarkTheme,
      child: Builder(
        builder: (context) {
          return ConnectivityAppWrapper(
              app: MaterialApp(
            debugShowCheckedModeBanner: false,
            routes: <String, WidgetBuilder>{
              '/login': (BuildContext context) => LoginScreen(),
              '/signup': (BuildContext context) => Signup(),
              // '/homepage': (BuildContext context) => HomePage(),
              // '/detail': (BuildContext context) => DetailPage(),
              '/nav': (BuildContext context) => Nav(),
              // '/edit': (BuildContext context) => ,
              // '/fav': (BuildContext context) => ,
              // '/par': (BuildContext context) => ,
              // '/logout': (BuildContext context) => ,
            },
            home: LoginScreen(),
          ));
        },
      ),
    );
  }
}
