import 'package:carrito1/domain/controller/controlcarrito.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'UI/app.dart';

void main() {
  Get.put(ControlCarrito());
  runApp(const App());
}
