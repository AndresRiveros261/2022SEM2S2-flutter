import 'package:calculadora/models/boton.models.dart';
import 'package:calculadora/widgets/filabotones.widget.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String textresultado = "";

  String txtnumero = "";
  String txtoperacion = "";
  String txtresultadoOperacion = "";
  String TextoperacionTotal = "";

  final textEntrada = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculadora")),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              //height: 100,
              color: Color.fromARGB(255, 146, 145, 141),
              child: Row(
                children: [
                  Text("Operaciones"),
                ],
              ),
            ),
          ),
          Container(
            height: 100,
            color: Color.fromARGB(255, 162, 164, 167),
            child: Row(
              children: [
                Text(textresultado),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              height: 100,
              color: Colors.grey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  filaBotones([
                    BotonModel(
                        titulo: "%",
                        metodo: () {
                          setState(() {
                            txtnumero += "1";
                          });
                        }),
                    BotonModel(
                        titulo: "CE",
                        metodo: () {
                          setState(() {
                            txtnumero += "1";
                          });
                        }),
                    BotonModel(
                        titulo: "C",
                        metodo: () {
                          setState(() {
                            txtnumero += "1";
                          });
                        }),
                    BotonModel(
                        titulo: "<-",
                        metodo: () {
                          setState(() {
                            txtnumero += "1";
                          });
                        }),
                  ]),
                  filaBotones([
                    BotonModel(
                        titulo: "1/X",
                        metodo: () {
                          setState(() {
                            txtnumero += "1";
                          });
                        }),
                    BotonModel(
                        titulo: "X^2",
                        metodo: () {
                          setState(() {
                            txtnumero += "(2)^(";
                          });
                        }),
                    BotonModel(
                        titulo: "√",
                        metodo: () {
                          setState(() {
                            txtoperacion += "√(";
                          });
                        }),
                    BotonModel(
                        titulo: "/",
                        metodo: () {
                          setState(() {
                            txtoperacion += "/";
                          });
                        }),
                  ]),
                  filaBotones([
                    BotonModel(
                        titulo: "7",
                        metodo: () {
                          setState(() {
                            txtnumero += "7";
                          });
                        }),
                    BotonModel(
                        titulo: "8",
                        metodo: () {
                          setState(() {
                            txtnumero += "8";
                          });
                        }),
                    BotonModel(
                        titulo: "9",
                        metodo: () {
                          setState(() {
                            txtnumero += "9";
                          });
                        }),
                    BotonModel(
                        titulo: "x",
                        metodo: () {
                          setState(() {
                            txtoperacion += "*";
                          });
                        }),
                  ]),
                  filaBotones([
                    BotonModel(
                        titulo: "4",
                        metodo: () {
                          setState(() {
                            txtnumero += "4";
                          });
                        }),
                    BotonModel(
                        titulo: "5",
                        metodo: () {
                          setState(() {
                            txtnumero += "5";
                          });
                        }),
                    BotonModel(
                        titulo: "6",
                        metodo: () {
                          setState(() {
                            txtnumero += "6";
                          });
                        }),
                    BotonModel(
                        titulo: "-",
                        metodo: () {
                          setState(() {
                            txtoperacion += "-";
                          });
                        }),
                  ]),
                  filaBotones([
                    BotonModel(
                        titulo: "1",
                        metodo: () {
                          setState(() {
                            txtnumero += "1";
                          });
                        }),
                    BotonModel(
                        titulo: "2",
                        metodo: () {
                          setState(() {
                            txtnumero += "2";
                          });
                        }),
                    BotonModel(
                        titulo: "3",
                        metodo: () {
                          setState(() {
                            txtnumero += "3";
                          });
                        }),
                    BotonModel(
                        titulo: "+",
                        metodo: () {
                          setState(() {
                            txtoperacion += "+";
                          });
                        }),
                  ]),
                  filaBotones([
                    BotonModel(
                        titulo: "+/-",
                        metodo: () {
                          setState(() {
                            txtoperacion += "+";
                          });
                        }),
                    BotonModel(
                        titulo: "0",
                        metodo: () {
                          setState(() {
                            txtnumero += "0";
                          });
                        }),
                    BotonModel(
                        titulo: ",",
                        metodo: () {
                          setState(() {
                            txtoperacion += ",";
                          });
                        }),
                    BotonModel(
                        titulo: "=",
                        metodo: () {
                          Parser p = new Parser();
                          ContextModel cm = new ContextModel();
                          Expression exp = p.parse(txtnumero);
                          setState(() {
                            txtoperacion = exp
                                .evaluate(EvaluationType.REAL, cm)
                                  txtresultadoOperacion = exp.toString();
                          });
                        }),
                  ]),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
