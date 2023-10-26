import 'dart:html';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPageScreen extends StatefulWidget {
  LoginPageScreen({Key? key}) : super(key: key);

  @override
  _LoginPageScreenState createState() => _LoginPageScreenState();
}

class _LoginPageScreenState extends State<LoginPageScreen> {
  @override
  Widget build(BuildContext context) {
    // final Future<SharedPreferences> token = SharedPreferences.getInstance();
    double screenWidth = MediaQuery.of(context).size.width;
    double bottomRadius = screenWidth * 0.1;
    final username = TextEditingController();
    final password = TextEditingController();
    void _handleLogin() async {
      if (username.text == 'tungdd5@fwork' && password.text == '26061993') {
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setString('storedValue', 'succefully');
      } else {
        print(username.text);
        print(password.text);
      }
    }

    LinearGradient myGradient = const LinearGradient(
      colors: [
        Color(0xFF00E5E5), // #00E5E5
        Color(0xFF72A5F2), // #72A5F2
        Color(0xFFE961FF), // #E961FF
      ],
      stops: [0.0872, 0.5087, 0.9130],
      begin: Alignment(0.5, -1.0),
      end: Alignment(-0.5, 1.0),
      transform:
          GradientRotation(224 * 3.1415926535 / 180), // 224deg to radians
    );
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            // appBar: AppBar(
            //   title: const Text('Information'),
            // ),
            body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/intro.png'),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 58),
                width: 214,
                height: 77,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/title_logo.png'),
                        fit: BoxFit.fill)),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color.fromRGBO(0, 0, 0, 76)),
                  color: const Color(0xFF091522).withOpacity(0.7),
                  borderRadius: BorderRadius.circular(bottomRadius),
                ),
                child: Container(
                  padding: const EdgeInsets.only(
                      left: 48, right: 48, bottom: 80, top: 38),
                  child: Column(
                    children: [
                      Container(
                        child: const Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Sign in',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 32,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  decoration: TextDecoration.none,
                                  fontFamily: "Figtree"),
                            )),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 24, bottom: 24),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width,
                                height: 50,
                                child: TextField(
                                  controller: username,
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 16),
                                  obscureText: false,
                                  decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Color(0xFF3A3A42),
                                            width: 2.0), // Border color
                                        borderRadius: BorderRadius.circular(
                                            44.0), // Border radius
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.white,
                                            width:
                                                2.0), // Border color when focused
                                        borderRadius: BorderRadius.circular(
                                            44.0), // Border radius when focused
                                      ),
                                      hintText: "Username",
                                      hintStyle: const TextStyle(
                                          color: Color(0xFF3A3A42)),
                                      contentPadding: const EdgeInsets.only(
                                          left: 17, top: 13, bottom: 13)),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 24),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width,
                                height: 50,
                                child: TextField(
                                  controller: password,
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 16),
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Color(0xFF3A3A42),
                                            width: 2.0), // Border color
                                        borderRadius: BorderRadius.circular(
                                            44.0), // Border radius
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.white,
                                            width:
                                                2.0), // Border color when focused
                                        borderRadius: BorderRadius.circular(
                                            44.0), // Border radius when focused
                                      ),
                                      hintText: "Password",
                                      hintStyle: const TextStyle(
                                          color: Color(0xFF3A3A42)),
                                      contentPadding: const EdgeInsets.only(
                                          left: 17, top: 13, bottom: 13)),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 16),
                              child: const Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Forgot Password?',
                                  style: TextStyle(
                                      color: Color(0xFF11DCE8),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 24),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 24),
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(44.0),
                                gradient: myGradient,
                              ),
                              child: TextButton(
                                  // onPressed: null,
                                  onPressed: () {
                                    _handleLogin();
                                  },
                                  child: Text(
                                    "Sign in",
                                    style: TextStyle(
                                        fontFamily: "Figtree",
                                        color: Colors.white,
                                        fontSize: 24),
                                  )),
                            ),
                            Container(
                              margin: const EdgeInsetsDirectional.symmetric(
                                  vertical: 24),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 100, // Độ dài của đường thẳng
                                    height: 2, // Độ rộng của đường thẳng
                                    color: const Color(
                                        0xff8D8E99), // Màu của đường thẳng
                                  ),
                                  Container(
                                    child: const Text(
                                      'or sign in using',
                                      style: TextStyle(
                                          color: Color(0xff8D8E99),
                                          fontSize: 14,
                                          fontFamily: 'Figtree'),
                                    ),
                                  ),
                                  Container(
                                    width: 100, // Độ dài của đường thẳng
                                    height: 2, // Độ rộng của đường thẳng
                                    color: const Color(
                                        0xff8D8E99), // Màu của đường thẳng
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 96,
                                    height: 96,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/twitter_logo.png'),
                                            fit: BoxFit.fill)),
                                  ),
                                  Container(
                                    width: 96,
                                    height: 96,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/twitter_logo.png'),
                                            fit: BoxFit.fill)),
                                  ),
                                  Container(
                                    width: 96,
                                    height: 96,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/google_logo.png'),
                                            fit: BoxFit.fill)),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Don’t have an account?',
                              style: TextStyle(
                                  color: Color(0xff8D8E99), fontSize: 12),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 5),
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                    color: Color(0xff11DCE8), fontSize: 14),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        )));
  }
}
