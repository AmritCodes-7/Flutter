import 'package:flutter/material.dart';
import 'package:flutter_second/pages/home_page.dart';
import 'package:flutter_svg/svg.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svg/home.svg'), label: 'Home'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svg/heart.svg'),
              label: 'Favorite'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svg/messages.svg'),
              label: 'Messages'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svg/user.svg'), label: 'Users'),
        ],
        currentIndex: currIndex,
        onTap: (index) {
          setState(() {
            currIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.white,
      ),
    );
  }

  final pages = [
    const HomePage(),
    const Center(
      child: Text('Favourite'),
    ),
    const Center(
      child: Text('Message'),
    ),
    const Center(
      child: Text('User'),
    ),
  ];
}
