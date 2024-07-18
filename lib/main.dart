import 'package:flutter/material.dart';
import 'package:myshop/pages/counter_page.dart';
import 'package:provider/provider.dart';
import '../pages/products_overview_page.dart';
import '../utils/app_routes.dart';
import 'models/product_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ProductList(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Colors.purple,
            secondary: Colors.deepOrange,
          ),
        ),
        home: const ProductsOverviewPage(),
        routes: {
          AppRoutes.productDetail: (ctx) => const CounterPage(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}