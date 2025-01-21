import 'package:flutter/material.dart';

import '../modelo/opcion.dart';

class OpcionControlador {
  // Opciones del grid
  List<Opcion> obtenerOpciones() {
    return [
      Opcion(titulo: 'Transferir dinero', icono: Icons.attach_money),
      Opcion(titulo: 'Recibir dinero', icono: Icons.payment),
      Opcion(titulo: 'Escanear o mostrar QR', icono: Icons.qr_code),
      Opcion(titulo: 'Pagar servicios', icono: Icons.lightbulb),
      Opcion(titulo: 'Pagar tarjetas', icono: Icons.credit_card),
      Opcion(titulo: 'Retirar sin tarjeta', icono: Icons.atm),
    ];
  }
}
