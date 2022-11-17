// ignore_for_file: avoid_print

import 'package:carrito1/domain/controller/controlcarrito.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Productos extends StatelessWidget {
  const Productos({super.key});

  @override
  Widget build(BuildContext context) {
    ControlCarrito controls = Get.find();
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de productos'),
        actions: [
          IconButton(
              onPressed: () {
                Get.toNamed('/comprar');
              },
              icon: const Icon(Icons.shopping_cart_checkout_sharp)),
              
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const CircleAvatar(
              child: Icon(Icons.shopify_sharp),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text('Saco Hebrante'),
                IconButton(
                    onPressed: () {
                      controls.disminuirS();
                    },
                    icon: const Icon(Icons.remove_circle_outline)),
                IconButton(
                    onPressed: () {
                      controls.aumentarS();
                    },
                    icon: const Icon(Icons.add_circle_outline_outlined))
              ],
            ),
            subtitle: const Text('280.000'),
            trailing: CircleAvatar(
              child: Obx(() => Text(controls.totalSaco.toString())),
            ),
          ),
          ListTile(
            leading: const CircleAvatar(
              child: Icon(Icons.shopify_sharp),
            ),
            title: Row(
              children: [
                const Text('Chaqueta Pull&Bear'),
                IconButton(
                    onPressed: () {
                      controls.disminuirC();
                    },
                    icon: const Icon(Icons.remove_circle_outline)),
                IconButton(
                    onPressed: () {
                      controls.aumentarC();    
                    },
                    icon: const Icon(Icons.add_circle_outline_outlined))
              ],
            ),
            subtitle: const Text('239.000'),
            trailing:  CircleAvatar(
              child: Obx(() => Text(controls.totalChaqueta.toString())),
              
            ),
          )
        ],
      ),
    );
  }
}
