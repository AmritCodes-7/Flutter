import 'package:flutter/material.dart';
import 'package:flutter_second/styles/app_text.dart';

class PostItem extends StatelessWidget {
  const PostItem({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/temp/glass.png',
                height: 50,
                width: 40,
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                'Amrit Tamang',
                style: AppText.subtitle3,
              ),
            ],
          ),
          Image.asset('assets/temp/drawing.jpg'),
        ],
      ),
    );
  }
}
