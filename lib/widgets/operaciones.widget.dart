import 'package:flutter/widgets.dart';

Widget operaciones(List<String> lista) {
  List<Widget> listaText = [];
  for (int i = 0; i < lista.length; i++) {
    if (i == 0 || i == 1 || i == 2) {
      listaText.add(Text(
        "${lista[i]}",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ));
    }
  }
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: listaText.reversed.toList(),
  );
}
