import 'package:first_app/currency_converter_material_page.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

// Types of widgets
// 1. StatelessWidget
// 2. StatefulWidget
// 3. InheritedWidget

// Types of state
// 1. Material Design - it is created by google
// 2. Cupertino Design - it is created by apple

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrencyConverterMaterialPage(),
    );
  }
}
