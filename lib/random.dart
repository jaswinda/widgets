import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:widget/services/products.dart';

class Random extends StatefulWidget {
  const Random({Key? key}) : super(key: key);

  @override
  State<Random> createState() => _RandomState();
}

class _RandomState extends State<Random> {
  bool isDataFetched = false;

  List<Product> listProduct = [];

  @override
  void initState() {
    super.initState();
    listUpdate();
  }

  listUpdate() async {
    listProduct = await fetchProduct();
    setState(() {
      isDataFetched = true;
    });
  }

  Future<List<Product>> fetchProduct() async {
    final response =
        await http.get(Uri.parse('https://fakestoreapi.com/products'));
    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((data) => Product.fromJson(data)).toList();
    } else {
      throw Exception('Failed to load album');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: isDataFetched
            ? SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: listProduct
                        .map((prduct) => Center(
                            child: designedListWidgetTwo(
                                prduct.title,
                                prduct.image,
                                prduct.description,
                                prduct.price)))
                        .toList()),
              )
            : const Center(
                child: CircularProgressIndicator(),
              ));
  }

  // Widget customizedCircularProgressIndicator(){
  //   return Column(
  //     children: [

  //     ],
  //   )
  // }

  Widget designedListWidgetOne(product) {
    return GestureDetector(
      onTap: () {
        print(product);
      },
      child: ListTile(
        leading: const CircleAvatar(
          backgroundImage: NetworkImage(
              'https://static.remove.bg/remove-bg-web/bf554ca6716508caedc52f1ac289b1eec29b6734/assets/start-0e837dcc57769db2306d8d659f53555feb500b3c5d456879b9c843d1872e7baa.jpg'),
        ),
        subtitle: Text('ddsd'),
        trailing: Text('5000.0'),
        title: Text(product),
      ),
    );
  }

  Widget designedListWidgetTwo(
      productNam, productImage, productDesp, productPrice) {
    return GestureDetector(
      onTap: () {
        // print(product);
      },
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(productImage),
        ),
        subtitle: Text(productDesp),
        trailing: Text(productPrice.toString()),
        title: Text(productNam),
      ),
    );
  }
}
