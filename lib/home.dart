// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:widget/random.dart';
import 'package:widget/screens/classses_and_list.dart';
import 'package:widget/screens/rowcolumn.dart';
import 'package:widget/screens/stateful.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text('Flutter Course Level-1'),
        ),
        // ignore: deprecated_member_use
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            myCustomizedButton(context, 'Row Column Example', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const RowColumn()),
              );
            }),
            myCustomizedButton(context, 'Stateful Widget Example', () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const StateFulExample()),
              );
            }),
            myCustomizedButton(context, 'Classes and List', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ClassesAndList()),
              );
            }),
            myCustomizedButton(context, 'Random', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Random()),
              );
            }),
          ],
        ));
  }

  Widget myCustomizedButton(context, text, onpressed) {
    return Center(
      child: RaisedButton(
        onPressed: () {
          onpressed();
        },
        color: Colors.blue,
        child: Text(text),
      ),
    );
  }
}
