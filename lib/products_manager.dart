import 'package:flutter/material.dart';
import './products.dart';

class ProductManager extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _ProductManager();
  }
}

class _ProductManager extends State<ProductManager> {
  List<String> _products = ['Food'];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: [Container(
      margin: EdgeInsets.all(10.0),
      child: TextButton(
        onPressed: () {
          setState(() {
            _products.add('Add test');
            print(_products);
          });
        },
        style: TextButton.styleFrom(
          foregroundColor: Color.fromARGB(255, 12, 59, 189),
          padding: const EdgeInsets.all(16.0),
          textStyle: const TextStyle(fontSize: 20),
        ),
        child: Text("Add Product"),
      ),
    ),
    Products(_products)
    ]);
  }
}
