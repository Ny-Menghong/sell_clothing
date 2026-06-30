import 'package:ecommerce/model/products.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  Products? products;
  DetailScreen({super.key,required this.products});
  @override
  State<DetailScreen> createState() => _DetailScreenState();
}
class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("${widget.products!.id}"),),
    );
  }
}