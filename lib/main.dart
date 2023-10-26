import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cosmic/screen/Infor/infoScreen.dart';
import 'package:cosmic/screen/auth/LoginPageScreen.dart';
import 'package:cosmic/screen/home/HomePageScreen.dart';
import 'package:cosmic/widget/home_bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late SharedPreferences _prefs;
  Widget? navi;
  Widget? Authen;

  List<dynamic> _storedValue = [];
  @override
  void initState() {
    super.initState();
    // initSharedPreferences();
  }

  @override
  void dispose() async {
    super.dispose();
  }

  @override
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: handleLogin(),
      builder: (context, snapshot) {
        if (snapshot.hasData && snapshot.data == true) {
          Authen = const HomePageScreen();
          navi = HomeBottomBar();
        } else {
          Authen = LoginPageScreen();
        }
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: Scaffold(
            body: Authen,
            bottomNavigationBar: HomeBottomBar(),
          ),
        );
      },
    );
  }

  Future<bool> handleLogin() async {
    final _prefs = await SharedPreferences.getInstance();
    final isLoggedIn = _prefs.getBool('isLoggedIn') ?? false;
    return isLoggedIn;
  }
}
