import 'package:flutter/material.dart';

class PaginaPerfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Información del Usuario',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          ListTile(
            leading: Icon(Icons.person, color: Colors.blue),
            title: Text('Nombre: Juan Pérez'),
          ),
          ListTile(
            leading: Icon(Icons.email, color: Colors.blue),
            title: Text('Correo: juan.perez@example.com'),
          ),
          ListTile(
            leading: Icon(Icons.phone, color: Colors.blue),
            title: Text('Teléfono: +593 987 654 321'),
          ),
          ListTile(
            leading: Icon(Icons.home, color: Colors.blue),
            title: Text('Dirección: Quito, Ecuador'),
          ),
        ],
      ),
    );
  }
}
