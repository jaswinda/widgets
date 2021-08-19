import 'package:flutter/material.dart';

class StateFulExample extends StatefulWidget {
  const StateFulExample({Key? key}) : super(key: key);

  @override
  _StateFulExampleState createState() => _StateFulExampleState();
}

class _StateFulExampleState extends State<StateFulExample> {
  int level = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // level += 1;
          setState(() {
            level = level + 1;
          });

          print(level);
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.black,
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text('Fluuter Level : ' + level.toString(),
                  style: const TextStyle(fontSize: 24.0)))
        ],
      ),
    );
  }
}
