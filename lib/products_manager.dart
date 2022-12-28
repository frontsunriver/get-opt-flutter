import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './products.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager({this.startingProduct = "Sweet Product"});

  State<StatefulWidget> createState() {
    return _ProductManager();
  }
}

class _ProductManager extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    // TODO: implement initState
    _products.add(widget.startingProduct);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: [Container(
      margin: EdgeInsets.all(10.0),
      child: CupertinoButton(
        color: Theme.of(context).primaryColor,
        onPressed: () {
          setState(() {
            _products.add('Add test');
            print(_products);
          });
        },
        child: Text("Add Product"),
      ),
    ),
    Products(_products)
    ]);
  }
}
