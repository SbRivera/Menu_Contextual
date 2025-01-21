import 'package:flutter/material.dart';
import 'vista/pantalla_principal.dart';
import 'vista/pantalla_banco.dart';

void main() {
  runApp(MiAplicacion());
}

class MiAplicacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Banco',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: PantallaPrincipal(),
    );
  }
}
