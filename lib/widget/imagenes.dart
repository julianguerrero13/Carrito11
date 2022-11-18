import 'package:flutter/material.dart';

class imagenPerfil extends StatelessWidget {
  const imagenPerfil({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
    backgroundImage:
        NetworkImage(
          "https://images.unsplash.com/photo-1560412073-6a800e93fd64?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=800"),
    radius: 60.0,
        );
  }
}
class imagenRopa extends StatelessWidget {
   imagenRopa({
    Key? key,
    required this.ImagenaUsar,
  }) : super(key: key);
  String ImagenaUsar ='';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500, //double.infinity,
      height: 300,
      child: Image.asset(ImagenaUsar, fit: BoxFit.cover),

    );
  }
}
