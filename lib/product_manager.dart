import 'package:flutter/material.dart';
import './products.dart';

class ProductManger extends StatefulWidget {
  final String stringProduct;
  ProductManger(this.stringProduct);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManger> {
  List<String> _products = ['Food Test'];
  @override
  void initState() {
    _products.add(widget.stringProduct);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10.0),
        child: RaisedButton(
          onPressed: () {
            setState(() {
              _products.add('Advance Food Tester');
            });
          },
          child: Text('button'),
        )),
        Produtcs(_products)
    ],)
  }
}
