import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../domain/controller/controlcarrito.dart';

class Carrito extends StatelessWidget {
  const Carrito({super.key});

  @override
  Widget build(BuildContext context) {
    ControlCarrito controls = Get.find();

    var VTsacos = (controls.totalSaco * 280000);
    var VTchaquetas = (controls.totalChaqueta * 230000);
    double ValorTotal = VTchaquetas + VTsacos;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Carrito de compras'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Row(
            children: [
              const Text('Saco Hebrante'),
            ],
          ),
          CircleAvatar(
            child: Text(controls.totalSaco.toString()),
          ),
          Text(VTsacos.toString(), style: const TextStyle(fontSize: 13)),
          const Divider(),
          Row(
            children: [
              const Text('Chaqueta Pull&Bear'),
            ],
          ),
          CircleAvatar(child: Text((controls.totalChaqueta).toString())),
          Text(VTchaquetas.toString(), style: const TextStyle(fontSize: 13)),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Total a pagar: \n $ValorTotal COP ',
              style: const TextStyle(fontSize: 20),
            ),
          )
        ]),
      ),
    );
  }
}
