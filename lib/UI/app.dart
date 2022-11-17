import 'package:carrito1/UI/carrito/comprar.dart';
import 'package:carrito1/UI/carrito/productos.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'App de compras 11',
      theme: ThemeData(primarySwatch: Colors.lime),
      debugShowCheckedModeBanner: false,
      home: const Productos(),
      routes: {
        '/productos': (context) => const Productos(),
        '/comprar': (context) => const Carrito()
      },
    );
  }
}
