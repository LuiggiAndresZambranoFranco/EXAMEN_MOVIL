import 'dart:ui';
import 'computador.models.dart';

class Backend {
  static final Backend _backend = Backend._internal();

  factory Backend() {
    return _backend;
  }
  Backend._internal();
  final _computador = [
    Computador(
        id: 1,
        nombre: 'HP 22DF0526LA',
        procesador: 'AMD RYZEN 3-3250U',
        pantalla: '21.5 Pulgadas',
        tarjetagrafica: 'Radeon VEGA Graphics',
        Descripcion:
            'La HP All-in-One es una computadora que combina el diseño ergonómico, funcionalidad y poder. Dándote seguridad y confianza para que todos en tu familia la utilicen sin ninguna preocupación. Incluye todo lo que necesitas sin gastar de más.',
        imagen: 'assets/PC1.jpg'),

    Computador(
        id: 2,
        nombre: 'Computadora Gamer Pro',
        procesador: 'Intel™ Core I7-11700K 11th Gen',
        pantalla: 'Monitor: Full HD 32',
        tarjetagrafica: 'Nvidia GeForce 4GB',
        Descripcion:
            'Procesador: Intel™ Core I7-11700K 11th Gen, Ram: 16 GB, Disco Solido: 1 TB  SSD, Graphics: Nvidia GeForce 4GB, Conectividad: WiFi, Monitor: Full HD 32″, Teclado Gamer Mouse Gamer.',
        imagen: 'assets/HP2.jpg'),
    
    Computador(
        id: 3,
        nombre: 'Lenovo Ideapad 3 2022',
        procesador: 'Intel Core i3-1115G4 de 11ª generación',
        pantalla: '15.6 Pulgadas',
        tarjetagrafica: 'Nvidia GeForce 4GB',
        Descripcion:
            'Memoria y almacenamiento: la memoria es de 8 GB de RAM de alto ancho de banda para ejecutar sin problemas múltiples aplicaciones y pestañas del navegador a la vez. El disco duro es de 256 GB PCIe unidad de estado sólido que permite un arranque rápido y transferencia de datos.',
        imagen: 'assets/lenovo.jpg'),
    

    Computador(
        id: 4,
        nombre: 'HP Stream 2022',
        procesador: ' Intel Celeron N4020 de doble núcleo',
        pantalla: '14 Pulgadas',
        tarjetagrafica: 'Nvidia GeForce 4GB',
        Descripcion:
            'Actualización gratuita a Windows 11; obtén acceso completo a Microsoft Excel, Word, PowerPoint, OneNote, Access y 1 TB de almacenamiento One Drive durante 1 año.',
        imagen: 'assets/HP3.jpg'),
    

    Computador(
        id: 5,
        nombre: 'Laptop Apple MacBook Air',
        procesador: 'Chip Apple M1',
        pantalla: 'pantalla Retina de 13 Pulgadas,',
        tarjetagrafica: 'Chip Apple M1',
        Descripcion:
            'Laptop Apple MacBook Air 2020: chip Apple M1, pantalla Retina de 13 pulgadas, 8 GB de RAM, almacenamiento SSD de 256 GB, teclado retroiluminado, cámara FaceTime HD, Touch ID. Funciona con iPhone/iPad; gris espacial',
        imagen: 'assets/Mac.jpg'),
    
  ];

  List<Computador> getComputador() {
    return _computador;
  }

  void markComputadorAsRead(int id) {
    final index = _computador.indexWhere((computador) => computador.id == id);
    _computador[index].read = true;
  }

  void deleteComputador(int id) {
    _computador.removeWhere((computador) => computador.id == id);
  }
}
