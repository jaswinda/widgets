import 'package:flutter/material.dart';

class StateFulExample extends StatefulWidget {
  const StateFulExample({Key? key}) : super(key: key);

  @override
  _StateFulExampleState createState() => _StateFulExampleState();
}

int level = 0;

class _StateFulExampleState extends State<StateFulExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Center(
              child: Text(
            'Flutter Level: ' + level.toString(),
            style: const TextStyle(fontSize: 24.0),
          )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // setState(() {
          //   level += 1;
          // });
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.black,
      ),
    );
  }
}
