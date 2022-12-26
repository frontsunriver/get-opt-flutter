import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppStore();
  }
}

class _MyAppStore extends State<MyApp> {
  List<String> _products = ['Food'];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Tutorial"),
        ),
        body: Column(
          children: [
            Container(
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
            Column(
              children: _products
                  .map(
                    (p) => Card(
                      child: Column(
                        children: <Widget>[
                          Image.asset("assets/bg.jpg"),
                          Text(p)
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
