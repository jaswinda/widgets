import 'package:flutter/material.dart';
import 'package:widget/services/products.dart';

class Random extends StatefulWidget {
  const Random({Key? key}) : super(key: key);

  @override
  State<Random> createState() => _RandomState();
}

class _RandomState extends State<Random> {
  bool isDataFetched = false;

  List<String> list = [
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
    'product-11',
    'product-12',
    'product',
    'product',
    'product',
    'product',
    'product',
    'product',
    'product',
    'product',
  ];

  List<Product> listProduct = [];

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 1000), () {
      setState(() {
        listProduct = [
          Product(
              name: 'name',
              description: 'description',
              image:
                  'https://static.remove.bg/remove-bg-web/bf554ca6716508caedc52f1ac289b1eec29b6734/assets/start-0e837dcc57769db2306d8d659f53555feb500b3c5d456879b9c843d1872e7baa.jpg',
              price: '500.0'),
        ];
        isDataFetched = true;
      });
    });
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
                                prduct.name,
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
        trailing: Text(productPrice),
        title: Text(productNam),
      ),
    );
  }
}
