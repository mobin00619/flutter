import 'package:flutter/material.dart';
import './products.dart';
import './product_control.dart';

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
  void didUpdateWidget(ProductManger oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  void _addProduct(String product) {
    setState(() {
      _products.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: [
      Container(
          margin: EdgeInsets.all(10.0), child: ProductControl(_addProduct)),
      Produtcs(_products)
    ]);
  }
}
