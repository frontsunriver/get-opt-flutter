import 'package:flutter/material.dart';
import './products_manager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("My Tutorial"),
          ),
          body: ProductManager()),
    );
  }
}
