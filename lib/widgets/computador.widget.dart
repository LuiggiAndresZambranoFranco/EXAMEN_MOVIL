import 'package:flutter/material.dart';
import '../models/computador.models.dart';

class ComputadorWidget extends StatelessWidget {
  final Computador computador;
  final Function longPress;
  final Function swipe;
  final Function ontap;
  TextStyle allsize = TextStyle(fontSize: 15);

  ComputadorWidget({
    Key? key,
    required this.computador,
    required this.longPress,
    required this.swipe,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onLongPress: () => longPress(computador),
        onHorizontalDragEnd: (detalles) => swipe(computador),
        onTap: () => ontap(
              computador,
              context,
            ),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.lightBlue),
            ),
          ),
          margin: EdgeInsets.all(10.0),
          child: Row(children: <Widget>[
            Container(
              width: 10.0,
              height: 10.0,
              decoration: BoxDecoration(
                color: computador.read ? Colors.blueGrey : Colors.deepOrange,
                shape: BoxShape.circle,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(computador.procesador, style: allsize),
                  Text(computador.nombre,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  Text(computador.pantalla, style: allsize),
                ],
              ),
            ),
          ]),
        ));
  }
}
