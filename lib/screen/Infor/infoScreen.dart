import 'package:flutter/material.dart';

void main() {
  runApp(const InforScreen());
}

class InforScreen extends StatelessWidget {
  const InforScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.only(bottom: 72),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/intro.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(''),
                  Container(
                    width: 296,
                    height: 296,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/loader.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Container(
                    width: 111,
                    height: 32,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/flutter_logo.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
