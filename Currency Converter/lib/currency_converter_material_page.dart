import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() {
    return _CurrencyConverterMaterialPageState();
  }
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(
        width: 2,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    );

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 128, 225, 237),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        title: const Text(
          'Currency Converter',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 128, 225, 237),
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        // we will use column as it will help us use multiple widgets
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'NPR $result',
              style: const TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Colors.black87,
                ),
                decoration: const InputDecoration(
                  hintText: '\tEnter amount in USD',
                  hintStyle: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w600,
                  ),
                  prefixIcon: Icon(Icons.monetization_on),
                  prefixIconColor: Colors.black87,
                  filled: true,
                  fillColor: Color.fromARGB(255, 153, 228, 247),
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = double.parse(textEditingController.text) * 130;
                  });
                },

                // the alternative and easy way of doing the same thing in below
                // style: const ButtonStyle(
                //   // backgroundColor: MaterialStatePropertyAll(Colors.black), this method is deprecated
                //   backgroundColor: WidgetStatePropertyAll(Colors.black),
                //   // this will change the color of the text inside the button
                //   foregroundColor: WidgetStatePropertyAll(Colors.white),
                //   minimumSize: WidgetStatePropertyAll(
                //     Size(double.infinity, 45),
                //   ),
                //   shape: WidgetStatePropertyAll(
                //     RoundedRectangleBorder(
                //       borderRadius: BorderRadius.all(
                //         Radius.circular(10),
                //       ),
                //     ),
                //   ),
                // ),

                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  // this will change the color of the text inside the button
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 45),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),

                child: const Text('Convert'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
