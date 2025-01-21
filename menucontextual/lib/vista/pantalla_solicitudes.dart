import 'package:flutter/material.dart';

class PaginaSolicitudes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Solicitudes Disponibles',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          Card(
            child: ListTile(
              leading: Icon(Icons.file_copy, color: Colors.blue),
              title: Text('Certificado Bancario'),
              onTap: () {}, // Acción para gestionar la solicitud
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.lock_reset, color: Colors.blue),
              title: Text('Cambio de Clave'),
              onTap: () {}, // Acción para gestionar la solicitud
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.receipt_long, color: Colors.blue),
              title: Text('Estados de Cuenta'),
              onTap: () {}, // Acción para gestionar la solicitud
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.trending_up, color: Colors.blue),
              title: Text('Avances de Tarjeta'),
              onTap: () {}, // Acción para gestionar la solicitud
            ),
          ),
        ],
      ),
    );
  }
}
