import 'package:flutter/material.dart';
import '../models/bakend.dart';
import '../models/computador.models.dart';
import 'detalle.screens.dart';
import '../widgets/computador.widget.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  void longPress(Computador computador) {
    setState(() {
      Backend().markComputadorAsRead(computador.id);
    });
  }

  void swipe(Computador computador) {
    setState(() {
      Backend().deleteComputador(computador.id);
    });
  }

  void ontap(Computador computador, context) {
    setState(() {
      Backend().markComputadorAsRead(computador.id);
    });
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DetalleScreen(computador: computador)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: Backend()
          .getComputador()
          .map((computador) => ComputadorWidget(
                computador: computador,
                longPress: longPress,
                swipe: swipe,
                ontap: ontap,
              ))
          .toList(),
    );
  }
}
