import 'package:flutter/material.dart';
import 'package:loja_app/components/product_item.dart';
import 'package:loja_app/models/product.dart';
import 'package:loja_app/models/product_list.dart';
import 'package:provider/provider.dart';

class ProductGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProductList>(context);

    final List<Product> loadedProducts = provider.items;
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: loadedProducts.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider(
        create: (_) => loadedProducts[i],
        child: ProductItem(
         
        ),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // QUANTIDADE DE COLUNAS
        childAspectRatio: 3 / 2, // TAMANHO DA COLUNA
        crossAxisSpacing: 10, // ESPAÇAMENTO VERTICAL
        mainAxisSpacing: 10, //ESPAÇAMENTO HORIZONTAL
      ),
    );
  }
}
