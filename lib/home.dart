// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:widget/rowcolumn.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.amber,
      //   title: const Text('Pahilo Pahilo Appb'),
      // ),
      // ignore: deprecated_member_use
      body: Center(
          child: RaisedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const RowColumn()),
          );
        },
        child: const Text('Click Me'),
      )),
    );
  }
}
