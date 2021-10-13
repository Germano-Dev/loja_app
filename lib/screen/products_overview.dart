import 'package:flutter/material.dart';
import 'package:loja_app/components/product_grid.dart';


class ProductsOverviewPages extends StatelessWidget {
  ProductsOverviewPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Loja App'),
      ),
      body: ProductGrid(),
    );
  }
}

