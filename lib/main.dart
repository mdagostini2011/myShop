import 'package:flutter/material.dart';
import 'package:myshop/pages/cart_page.dart';
import 'package:myshop/pages/orders_page.dart';
import 'package:provider/provider.dart';
import '../models/product_list.dart';
import '../pages/product_detail_page.dart';
import '../pages/products_overview_page.dart';
import '../utils/app_routes.dart';
import 'models/cart.dart';
import 'models/order_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ProductList(),
        ),
        ChangeNotifierProvider(
          create: (_) => Cart(),
        ),
        ChangeNotifierProvider(
          create: (_) => OrderList(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Colors.purple,
            secondary: Colors.deepOrange,
          ),
          fontFamily: 'Lato',
        ),
//        home: const ProductsOverviewPage(),
        routes: {
          AppRoutes.productDetail: (ctx) => const ProductDetailPage(),
          AppRoutes.home: (ctx) => const ProductsOverviewPage(),
          AppRoutes.cart: (ctx) => const CartPage(),
          AppRoutes.orders: (ctx) => const OrdersPage(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
