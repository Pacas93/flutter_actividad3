import 'package:flutter/material.dart';
import 'package:flutter_actividad3/contenedores.dart';

class Principal extends StatefulWidget {
  Principal({Key? key}) : super(key: key);

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: contenedores(),
    );
  }
}
