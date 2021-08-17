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

  Widget designedContainer(color, height, width) {
    return Container(
      padding: const EdgeInsets.all(30.0),
      height: height,
      width: width,
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
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        // imageFromNetwork(),
        // imageFromAsset()
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

        // designedContainer(Colors.red, 50.0, 50.0),
        // designedContainer(Colors.amber, 100.0, 50.0),
        // designedContainer(Colors.orange, 150.0, 50.0),
        // designedContainer(Colors.blue, 200.0, 50.0),

        designedContainer(Colors.red, 50.0, 25.0),
        designedContainer(Colors.amber, 100.0, 50.0),
        designedContainer(Colors.orange, 150.0, 75.0),
        designedContainer(Colors.blue, 200.0, 100.0),

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
      // crossAxisAlignment: CrossAxisAlignment.start,
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
        // designedContainer(Colors.black),

        // designedContainer(Colors.red, 50.0, 50.0),
        // designedContainer(Colors.amber, 100.0, 50.0),
        // designedContainer(Colors.orange, 150.0, 50.0),
        // designedContainer(Colors.blue, 200.0, 50.0),

        // designedContainer(Colors.red, 50.0, 50.0),
        // designedContainer(Colors.amber, 100.0, 100.0),
        // designedContainer(Colors.orange, 150.0, 150.0),
        // designedContainer(Colors.blue, 200.0, 200.0),

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
