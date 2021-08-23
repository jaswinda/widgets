// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:widget/random.dart';
import 'package:widget/screens/classses_and_list.dart';
import 'package:widget/screens/pass_data.dart';
import 'package:widget/screens/rowcolumn.dart';
import 'package:widget/screens/stateful.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int count = 0;
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
            Text(
              'counter ' + count.toString(),
              style: const TextStyle(fontSize: 24.0),
            ),
            ElevatedButton(
                onPressed: () {
                  increament();
                },
                child: Text('Increament')),
            myCustomizedButton(context, 'Pass Data Screen', () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => PassData(
                          count: count,
                          increament: increament,
                        )),
              );
            }),
          ],
        ));
  }

  increament() {
    setState(() {
      count += 1;
    });
  }

  Widget myCustomizedButton(context, text, onpressed) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          onpressed();
        },
        child: Text(text),
      ),
    );
  }
}
