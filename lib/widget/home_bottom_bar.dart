import 'package:cosmic/screen/home/HomePageScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(HomeBottomBar());
}

class HomeBottomBar extends StatefulWidget {
  @override
  _HomeBottomBarState createState() => _HomeBottomBarState();
}

class _HomeBottomBarState extends State<HomeBottomBar> {
  int _currentIndex = 0;

  // Function to handle tab selection
  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(children: [
          _buildPage(_currentIndex),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: CustomBottomNavigationBar(
              currentIndex: _currentIndex,
              onTap: _onTabTapped,
            ),
          ),
        ]), // Display the content of the selected tab
        // bottomNavigationBar: CustomBottomNavigationBar(
        //   currentIndex: _currentIndex,
        //   onTap: _onTabTapped,
        // ),
      ),
    );
  }

  Widget _buildPage(int index) {
    switch (index) {
      case 0:
        return const HomePageScreen();
      case 1:
        return CustomPage("Tab 2 Content");
      case 2:
        return CustomPage("Tab 3 Content");
      default:
        return HomePage();
    }
  }
}

class CustomPage extends StatelessWidget {
  final String content;

  CustomPage(this.content);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(content),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Home Page Content'),
    );
  }
}

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  CustomBottomNavigationBar({required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 53),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(48),
        border: Border.all(color: const Color(0xff091522).withOpacity(0.7)),
        color: const Color.fromARGB(183, 9, 21, 34)
            .withOpacity(0.7), // Background color
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(0, Icons.public, 'Home'),
          _buildNavItem(1, Icons.favorite, 'Favourites'),
          _buildNavItem(2, Icons.more_horiz, 'More'),
        ],
      ),
    );
  }

  Widget _buildNavItem(int index, IconData icon, String label) {
    return GestureDetector(
      onTap: () => onTap(index),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon,
                color: index == currentIndex
                    ? const Color(0xff11DCE8)
                    : const Color(0xff8D8E99)),
            const SizedBox(height: 4.0),
            Text(
              label,
              style: TextStyle(
                color: index == currentIndex
                    ? const Color(0xff11DCE8)
                    : const Color(0xff8D8E99),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
