import 'package:calculadora/models/boton.models.dart';
import 'package:calculadora/widgets/filabotones.widget.dart';
import 'package:calculadora/widgets/operaciones.widget.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> datos = [];
  List<String> datosR = [];
  String textresultado = "";
  String txtnumero = "";
  String txtoperacion = "";
  String txtresultadoOperacion = "";
  String Operacionresultado = "";

  final textEntrada = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculadora")),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.black12,
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Center(
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Container(
                                padding: const EdgeInsets.all(20),
                                alignment: Alignment.center,
                                child: operaciones(datosR)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.blueGrey,
              child: Row(
                children: [
                  Column(
                    children: [
                      Column(
                        children: [
                          Container(
                              padding: const EdgeInsets.all(10),
                              alignment: Alignment.centerRight,
                              child: Text(
                                txtnumero,
                                style: TextStyle(
                                    fontSize: 40, fontWeight: FontWeight.bold),
                              )),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
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
                            if (txtnumero != "") {
                              double porcentaje = double.parse(txtnumero) / 100;
                              txtnumero = porcentaje.toString();
                              txtresultadoOperacion += txtnumero;
                              txtnumero = "";
                            }
                          });
                        }),
                    BotonModel(
                        titulo: "CE",
                        metodo: () {
                          setState(() {
                            txtnumero += "";
                          });
                        }),
                    BotonModel(
                        titulo: "C",
                        metodo: () {
                          setState(() {
                            txtnumero = "";
                            txtoperacion = "";
                            txtresultadoOperacion = "";
                          });
                        }),
                    BotonModel(
                        titulo: "<-",
                        metodo: () {
                          setState(() {
                            txtnumero = (txtnumero.length > 0)
                                ? (txtnumero.substring(0, txtnumero.length - 1))
                                : "";
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
                            txtoperacion += txtnumero;
                            if (txtnumero != "") {
                              txtresultadoOperacion += txtnumero;
                            }
                            txtresultadoOperacion += txtoperacion;
                            txtnumero = "";
                          });
                        }),
                    BotonModel(
                        titulo: "√",
                        metodo: () {
                          setState(() {
                            txtoperacion = "sqrt(";
                            if (txtnumero != "") {
                              txtresultadoOperacion += txtnumero;
                            }
                            txtresultadoOperacion += txtoperacion;
                            txtnumero = "";
                          });
                        }),
                    BotonModel(
                        titulo: "/",
                        metodo: () {
                          setState(() {
                            txtoperacion = "/";
                            if (txtnumero != "") {
                              txtresultadoOperacion += txtnumero;
                            }
                            txtresultadoOperacion += txtoperacion;
                            txtnumero = "";
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
                            txtoperacion = "*";
                            if (txtnumero != "") {
                              txtresultadoOperacion += txtnumero;
                            }
                            txtresultadoOperacion += txtoperacion;
                            txtnumero = "";
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
                            txtoperacion = "-";
                            if (txtnumero != "") {
                              txtresultadoOperacion += txtnumero;
                            }
                            txtresultadoOperacion += txtoperacion;
                            txtnumero = "";
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
                            txtoperacion = "+";
                            if (txtnumero != "") {
                              txtresultadoOperacion += txtnumero;
                            }
                            txtresultadoOperacion += txtoperacion;
                            txtnumero = "";
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
                          setState(() {
                            if (txtnumero != "") {
                              txtresultadoOperacion += txtnumero;
                            }
                            String resultado = txtresultadoOperacion;
                            {
                              Parser p = Parser();
                              Expression exp = p.parse(resultado);
                              ContextModel cm = ContextModel();
                              double eval =
                                  exp.evaluate(EvaluationType.REAL, cm);
                              resultado = eval.toString();
                              txtresultadoOperacion += "= $resultado";
                              datos.add(txtresultadoOperacion);
                              datosR = datos.reversed.toList();
                              txtresultadoOperacion = "";
                              txtnumero = "";
                              txtoperacion = "";
                            }
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
