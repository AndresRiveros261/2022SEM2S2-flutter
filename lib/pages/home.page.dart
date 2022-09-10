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
                    BotonModel(titulo: "%", metodo: (){ print("porcentaje");} ),
                    BotonModel(titulo: "CE", metodo: (){ print("eliminar");} ),
                    BotonModel(titulo: "C", metodo: (){ print("tres");} ),
                    BotonModel(titulo: "<=", metodo: (){ print("+");} ),
                  ]),

                  filaBotones([
                    BotonModel(titulo: "1/X", metodo: (){ print("fraccionario");} ),
                    BotonModel(titulo: "X2", metodo: (){ print("potencia");} ),
                    BotonModel(titulo: "Raiz", metodo: (){ print("tres");} ),
                    BotonModel(titulo: "/", metodo: (){ print("+");} ),
                  ]),

                  
                     filaBotones([
                    BotonModel(titulo: "7", metodo: (){ print("siete");} ),
                    BotonModel(titulo: "8", metodo: (){ print("ocho");} ),
                    BotonModel(titulo: "9", metodo: (){ print("nueve");} ),
                    BotonModel(titulo: "x", metodo: (){ print("x");} ),
                  ]),

                  filaBotones([
                    BotonModel(titulo: "4", metodo: (){ print("cuatro");} ),
                    BotonModel(titulo: "5", metodo: (){ print("cinco");} ),
                    BotonModel(titulo: "6", metodo: (){ print("seis");} ),
                    BotonModel(titulo: "-", metodo: (){ print("-");} ),
                  ]),

                  filaBotones([
                    BotonModel(
                      titulo: "1", 
                      metodo: () {
                        setState(() {
                        textresultado += "1";
                     });
                      }),

                    BotonModel(
                      titulo: "2", 
                      metodo: () {
                        setState(() {
                        textresultado += "2";
                     });
                      }),

                     BotonModel(
                      titulo: "3", 
                      metodo: () {
                        setState(() {
                        textresultado += "3";
                     });
                      }),


                    BotonModel(
                      titulo: "+", 
                      metodo: () {
                        setState(() {
                        textresultado += "+";
                     });
                     }),

                  ]),

                     filaBotones([
                    BotonModel(titulo: "+/-", metodo: (){ print("mas-menos");} ),
                    BotonModel(titulo: "0", metodo: (){ print("cero");} ),
                    BotonModel(titulo: ",", metodo: (){ print("coma");} ),
                    BotonModel(titulo: "=", metodo: (){ print("igual");} ),
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