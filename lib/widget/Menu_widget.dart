import 'package:flutter/material.dart';

void main() {
  runApp(const MenuWidget());
}

class MenuWidget extends StatelessWidget {
  const MenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 53),
        width: MediaQuery.of(context).size.width,
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28),
            color: const Color(0xff091522).withOpacity(0.7)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/home_icon.png'),
                            fit: BoxFit.cover)),
                  ),
                  const Text(
                    'Home',
                    style: TextStyle(fontSize: 10),
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/home_icon.png'),
                            fit: BoxFit.cover)),
                  ),
                  Text(
                    'Home',
                    style: TextStyle(fontSize: 10),
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/home_icon.png'),
                            fit: BoxFit.cover)),
                  ),
                  Text(
                    'Home',
                    style: TextStyle(fontSize: 10),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
