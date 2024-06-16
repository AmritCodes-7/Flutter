import 'package:flutter/material.dart';
import 'package:flutter_second/styles/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: const Text(
          '5 min of flutter',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: false,
        actions: const [
          Icon(
            Icons.location_on_outlined,
            color: Colors.white,
          ),
        ],
      ),
      body: ListView(
        children: mockUserFromServer(),
      ),
    );
  }

  Widget _userItem() {
    return Row(
      children: [
        Image.asset(
          'assets/temp/glass.png',
          height: 50,
          width: 40,
        ),
        const SizedBox(
          width: 20,
        ),
        const Text('Amrit Tamang'),
      ],
    );
  }

  List<Widget> mockUserFromServer() {
    List<Widget> users = [];
    for (var i = 0; i < 20; i++) {
      users.add(_userItem());
    }
    return users;
  }
}
