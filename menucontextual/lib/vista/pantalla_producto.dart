import 'package:flutter/material.dart';

class PaginaProductos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Productos Bancarios',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          ListTile(
            leading: Icon(Icons.account_balance, color: Colors.blue),
            title: Text('Cuenta de Ahorro'),
            subtitle: Text('Saldo disponible: \$5,000.00'),
          ),
          ListTile(
            leading: Icon(Icons.account_balance_wallet, color: Colors.blue),
            title: Text('Cuenta Corriente'),
            subtitle: Text('Saldo disponible: \$2,300.00'),
          ),
          ListTile(
            leading: Icon(Icons.credit_card, color: Colors.blue),
            title: Text('Tarjeta de Crédito'),
            subtitle: Text('Límite disponible: \$10,000.00'),
          ),
        ],
      ),
    );
  }
}
