import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../domain/controller/controlcarrito.dart';

class Carrito extends StatelessWidget {
  const Carrito({super.key});
  

  @override
  Widget build(BuildContext context) {
    ControlCarrito controls = Get.find();
   
   


    return Scaffold(
      appBar: AppBar(
        title: const Text('Carrito de compras'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children:  [
          const Text('Saco Hebrante'),
          CircleAvatar(child: Text(controls.totalSaco.toString()),),
          const Divider(),
          const Text('Chaqueta Pull&Bear'),
          CircleAvatar(child: Obx(() => Text(controls.totalChaqueta.toString()),)),
          const Divider(),
          Text(controls.VTchaqueta.toString()),
          
        ]),
      ),
    );
  }
}
