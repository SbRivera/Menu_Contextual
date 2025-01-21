import 'package:flutter/material.dart';
import '../controlador/opcion_controlador.dart';
import '../modelo/opcion.dart';

class PantallaBanco extends StatelessWidget {
  final OpcionControlador controlador = OpcionControlador();

  @override
  Widget build(BuildContext context) {
    List<Opcion> opciones = controlador.obtenerOpciones();

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Mis productos',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Tienes 2 productos',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 16),
            _crearTarjetaCuenta(), // Tarjeta de cuenta
            SizedBox(height: 16),
            Text(
              '¿Qué quieres hacer?',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            _crearOpcionesGrid(opciones), // Opciones en forma de cuadrícula
          ],
        ),
      ),
    );
  }

  Widget _crearTarjetaCuenta() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Cue409',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4),
            Text(
              '******2409',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Saldo disponible', style: TextStyle(fontSize: 14)),
                    Text(
                      '\$5,000.00',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.remove_red_eye,
                  color: Colors.blue,
                  size: 24,
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(
              'Cuenta Transaccional',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }

  Widget _crearOpcionesGrid(List<Opcion> opciones) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: opciones.length,
      itemBuilder: (context, index) {
        final opcion = opciones[index];
        return Column(
          children: [
            CircleAvatar(
              backgroundColor: Colors.blue.shade50,
              radius: 30,
              child: Icon(
                opcion.icono,
                color: Colors.blue,
                size: 28,
              ),
            ),
            SizedBox(height: 8),
            Text(
              opcion.titulo,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12),
            ),
          ],
        );
      },
    );
  }
}
