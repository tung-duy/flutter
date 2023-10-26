import 'package:cosmic/widget/home_bottom_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const HomePageScreen());
}

class CustomTab extends StatelessWidget {
  final String label;

  const CustomTab({required this.label, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromRGBO(0, 0, 0, 76)),
        color: const Color.fromARGB(183, 9, 21, 34).withOpacity(0.7),
        borderRadius: BorderRadius.circular(48),
      ),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/planet.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double bottomRadius = screenWidth * 0.1;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: DefaultTabController(
        length: 5, // Change this length to match your number of tabs
        child: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/intro.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              margin: EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  Container(
                    child: const TabBar(
                      indicator: UnderlineTabIndicator(
                        borderSide: BorderSide(
                            width: 0.0,
                            color: Colors.transparent), // Đặt màu trong suốt
                      ),
                      tabs: [
                        CustomTab(label: 'Mercury'),
                        CustomTab(label: 'Venus'),
                        CustomTab(label: 'Earth'),
                        CustomTab(label: 'Tab 4'),
                        CustomTab(label: 'Tab 5'),
                        // Add more custom tabs as needed
                      ],
                      isScrollable: true,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      margin: const EdgeInsets.symmetric(vertical: 24),
                      height: 80,
                      child: TabBarView(
                        children: [
                          Container(
                            child: const Center(
                              child: Text("Hello"),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 50),
                            child: Center(
                              child: Column(
                                children: [
                                  Center(
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          left: 30,
                                          right: 30,
                                          top: 10,
                                          bottom: 20),
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(bottomRadius),
                                        border: Border.all(
                                          color:
                                              const Color.fromRGBO(0, 0, 0, 76),
                                        ),
                                        color:
                                            const Color.fromARGB(183, 9, 21, 34)
                                                .withOpacity(0.7),
                                      ),
                                      child: Column(
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.only(
                                              left: 24,
                                              top: 21,
                                              bottom: 17,
                                            ),
                                            child: const Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                'Planet of the day',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w800,
                                                  color: Color.fromARGB(
                                                      255, 255, 255, 255),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: 80.0,
                                                  height: 80.0,
                                                  decoration:
                                                      const BoxDecoration(
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/images/earth.png'),
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        width: 200,
                                                        child: const Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Text(
                                                            'Mars',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w800,
                                                              color: Color(
                                                                  0xff11DCE8),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 200,
                                                        child: const Row(
                                                          children: [
                                                            Flexible(
                                                              child: Text(
                                                                'Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System, only being larger than Mercury. In the English language, Mars is named for the Roman god of war.',
                                                                style:
                                                                    TextStyle(
                                                                  height: 1.7,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  fontSize: 12,
                                                                  fontFamily:
                                                                      "Figtree",
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          255,
                                                                          255,
                                                                          255),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 200,
                                                        child: const Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Text(
                                                              'Details',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 16),
                                                            ),
                                                            Icon(
                                                              Icons.skip_next,
                                                              color:
                                                                  Colors.white,
                                                            )
                                                          ],
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 30),
                                    padding: EdgeInsets.symmetric(
                                        vertical: 20, horizontal: 30),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: const Color.fromRGBO(
                                              0, 0, 0, 76)),
                                      color:
                                          const Color.fromARGB(183, 9, 21, 34)
                                              .withOpacity(0.7),
                                      borderRadius: BorderRadius.circular(48),
                                    ),
                                    child: Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.symmetric(
                                              vertical: 10),
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              'Solar System',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w800,
                                                  fontSize: 16,
                                                  fontFamily: 'Figtree'),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // margin: EdgeInsets.only(top: 20),
                                          child: Text(
                                              'The Solar System[c] is the gravitationally bound system of the Sun and the objects that orbit it. It formed 4.6 billion years ago from the gravitational collapse of a giant interstellar molecular cloud. The vast majority (99.86%) of the systems mass is in the Sun, with most of the remaining mass contained in the planet Jupiter. The four inner system planets—Mercury, Venus, Earth and Mars—are terrestrial planets, being composed primarily of rock and metal. The four giant planets of the outer system are substantially larger and more massive than the terrestrials. ',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400)),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // Add more TabBarView children as needed
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
