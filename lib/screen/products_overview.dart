import 'package:flutter/material.dart';
import 'package:loja_app/components/product_item.dart';
import 'package:loja_app/data/dummy_data.dart';

import 'package:loja_app/models/product.dart';

class ProductsOverviewPages extends StatelessWidget {
  final List<Product> loadedProducts = dummyProducts;
  ProductsOverviewPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Loja App'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: loadedProducts.length,
        itemBuilder: (ctx, i) => ProductItem(product: loadedProducts[i]),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // QUANTIDADE DE COLUNAS
          childAspectRatio: 3 / 2, // TAMANHO DA COLUNA
          crossAxisSpacing: 10, // ESPAÇAMENTO VERTICAL
          mainAxisSpacing: 10, //ESPAÇAMENTO HORIZONTAL
        ),
      ),
    );
  }
}
