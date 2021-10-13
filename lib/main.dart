import 'package:flutter/material.dart';
import 'package:loja_app/screen/product_detail_page.dart';
import 'package:loja_app/screen/products_overview.dart';
import 'package:loja_app/utils/app_routes.dart';
import 'package:provider/provider.dart';

import 'models/product_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ProductList(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepOrange,
          fontFamily: 'Lato',
        ),
        //darkTheme: ThemeData.dark(),
        home: ProductsOverviewPages(),
        routes: {
          AppRoutes.PRODUCT_DETAIL:(context) => ProductDetailPage(),
        },
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ProductsOverviewPages(),
    );
  }
}
