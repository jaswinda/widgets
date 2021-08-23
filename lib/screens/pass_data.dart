import 'package:flutter/material.dart';

class PassData extends StatefulWidget {
  final int count;
  final increament;
  const PassData({Key? key, required this.count, required this.increament})
      : super(key: key);

  @override
  State<PassData> createState() => _PassDataState(count);
}

class _PassDataState extends State<PassData> {
  int count;
  _PassDataState(this.count);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            'counter: ' + count.toString(),
            style: const TextStyle(fontSize: 24.0),
          )),
          ElevatedButton(
              onPressed: () {
                increament();
              },
              child: const Text('Increament'))
        ],
      ),
    );
  }

  increament() {
    setState(() {
      count += 1;
    });
    widget.increament();
  }
}
