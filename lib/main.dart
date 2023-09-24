import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task9/Screens/products.dart';
import 'package:task9/Screens/shoping_cart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
    );
  }
}
 GoRouter _router=GoRouter(
   initialLocation: "/productList",
     routes: [
       GoRoute(path: "/productList",builder: (context,state)=> const ProductList()),
       GoRoute(path: "/Cart",builder: (context,state)=> const ShoppingCart()),

     ]);