import 'package:flutter/material.dart';

class Produtcs extends StatelessWidget {
  final List<String> products;
  Produtcs(this.products);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: products
          .map(
            (item) => Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/food.jpg'),
                      Text("some text ..."),
                    ],
                  ),
                ),
          )
          .toList(),
    );
  }
}
