import 'package:flutter/material.dart';
import '../models/computador.models.dart';

class DetalleScreen extends StatelessWidget {
  final Computador computador;
  TextStyle allsize = TextStyle(fontSize: 17);
  BoxDecoration linesize = BoxDecoration(
    border: Border(
      bottom: BorderSide(width: 2, color: Colors.lightBlue),
    ),
  );

  DetalleScreen({Key? key, required this.computador}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(computador.nombre),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: Container(
                    width: 200,
                    height: 200,
                    child: Image.asset(computador.imagen))),
            Container(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              width: double.infinity,
              child: Text(
                computador.procesador,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              decoration: linesize,
            ),
            SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(computador.nombre, style: allsize),
                  Text(
                    computador.pantalla,
                    style: TextStyle(fontSize: 17, color: Colors.black),
                  ),
                ],
              ),
              decoration: linesize,
            ),
            SizedBox(height: 15),
            Text(computador.Descripcion.toString(), style: allsize),
            Center(
                child: Container(
              child: ElevatedButton(
                child: Text(
                  'DONE!',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ))
          ],
        ),
      ),
    );
  }
}
