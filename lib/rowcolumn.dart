import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget {
  const RowColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
        ),
        body: columnExampleOne());
  }

  Widget designedContainer(color) {
    return Container(
      padding: const EdgeInsets.all(30.0),
      color: color,
    );
  }

  Widget desinedText(textPassed) {
    return Text(
      textPassed,
      style: const TextStyle(
          fontSize: 50.0,
          fontWeight: FontWeight.bold,
          color: Colors.amber,
          fontFamily: 'stylescript'),
    );
  }

  Widget rowExampleOne() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // imageFromNetwork(),
        imageFromAsset()
        // Expanded(child: desinedText('Text 1')),
        // desinedText('textPassed'),
        // desinedText('textPassed'),
        // desinedText('textPassed'),
        // Expanded(child: desinedText('Text 1')),
        // Expanded(child: desinedText('Text 2')),
        // Expanded(child: desinedText('Text 3')),
        // Expanded(child: desinedText('Text 4')),

        // designedContainer(Colors.red),
        // designedContainer(Colors.amber),
        // designedContainer(Colors.orange),
        // designedContainer(Colors.black),

        // Expanded(child: designedContainer(Colors.red)),
        // Expanded(child: designedContainer(Colors.amber)),
        // Expanded(child: designedContainer(Colors.orange)),
        // Expanded(child: designedContainer(Colors.blue)),
      ],
    );
  }

  Widget columnExampleOne() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // desinedText('textPassed'),
        // desinedText('textPassed'),
        // desinedText('textPassed'),
        // desinedText('textPassed'),
        // Text('dadsa'),
        // Expanded(flex: 6, child: desinedText('Text 1')),
        // Expanded(child: desinedText('Text 1')),
        // Expanded(child: desinedText('Text 1')),
        // Expanded(child: desinedText('Text 1')),
        // Expanded(child: desinedText('Text 1')),

        // designedContainer(Colors.red),
        // designedContainer(Colors.amber),
        // designedContainer(Colors.orange),
        // designedContainer(Colors.blue),

        // Expanded(child: designedContainer(Colors.red)),
        // Expanded(child: designedContainer(Colors.amber)),
        // Expanded(child: designedContainer(Colors.orange)),
        // Expanded(child: designedContainer(Colors.blue)),

        rowExampleOne(),

        // imageFromAsset()
      ],
    );
  }

  Widget imageFromAsset() {
    return SizedBox(
      height: 100.0,
      child: Image.asset('logo.png'),
    );
  }

  Widget imageFromNetwork() {
    return SizedBox(
      height: 150.0,
      child: Image.network(
          'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),
    );
  }
}
