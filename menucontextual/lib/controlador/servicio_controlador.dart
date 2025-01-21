import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../modelo/servicio.dart';

class ServicioControlador {
  // Servicios disponibles en la ciudad
  List<Servicio> obtenerServiciosCiudad() {
    return [
      Servicio(
        nombre: 'CNEL',
        icono: 'assets/images/cnel.jpg',
      ),
      Servicio(
        nombre: 'Alcaldía Guayaquil',
        icono: 'assets/images/alcadia.png',
      ),
    ];
  }

  // Servicios favoritos del usuario
  List<Servicio> obtenerFavoritos() {
    return [
      Servicio(
        nombre: 'TV Cable',
        icono: 'assets/images/Logo-tvcable-aplicaciones1.png',
      ),
      Servicio(
        nombre: 'Ecuabet',
        icono: 'assets/images/ecuabet.jpg',
      ),
    ];
  }

  // Productos principales
  List<Map<String, dynamic>> obtenerProductosPrincipales() {
    return [
      {'nombre': 'Luz', 'icono': CupertinoIcons.lightbulb},
      {'nombre': 'Agua', 'icono': CupertinoIcons.drop},
      {'nombre': 'Recargas', 'icono': CupertinoIcons.phone_fill},
      {'nombre': 'Todos', 'icono': CupertinoIcons.list_bullet},
    ];
  }
}
