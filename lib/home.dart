// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:widget/rowcolumn.dart';
import 'package:widget/stateful.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text('Pahilo Pahilo Appb'),
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
