import 'package:flutter/material.dart';

class ClassesAndList extends StatefulWidget {
  const ClassesAndList({Key? key}) : super(key: key);

  @override
  _ClassesAndListState createState() => _ClassesAndListState();
}

class _ClassesAndListState extends State<ClassesAndList> {
  List<String> products = [
    'product-1',
    'product-2',
    'product-3',
    'product-4',
    'product-5',
    'product-6',
    'product-7',
    'product-8',
    'product-9',
    'product-10',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
            children: products
                .map((product) => designedListWidgetOne(product))
                // .map((product) => designedListWidgetTwo('product', '', '', ''))
                .toList()),
      ),
    );
  }

  Widget designedListWidgetOne(product) {
    return const SizedBox(
      height: 200,
      // width: 200,
      child: Card(
        child: ListTile(
          title: Text("Codesinsider.com"),
        ),
        elevation: 8,
        shadowColor: Colors.green,
        margin: EdgeInsets.all(20),
      ),
    );
  }
}
