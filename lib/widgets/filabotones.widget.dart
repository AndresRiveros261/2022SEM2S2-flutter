import 'package:calculadora/models/boton.models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget filaBotones(List<BotonModel> lista) {
  List<Widget> listaBotones = [];

  lista.forEach((element) {
    listaBotones.add(SizedBox(
      height: 40,
      width: 90,
      child: ElevatedButton(
        onPressed: element.metodo,
        child: Text(
          element.titulo,
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll<Color>(Colors.black12)),
      ),
    ));
  });

  return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround, children: listaBotones);
}
