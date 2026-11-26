/* 
  5.- Para el caso inverso anterior, utilizaremos la función parse(): a partir de una serie de Strings que representan en formato cadena datos de tipo int, double, etc… convertiremos y asignaremos su contenido a variables de cada uno de estos tipos. ¿Qué ocurre con List, Map, Enum, Set…? ¿Cómo deben convertirse en String?

  Por otra parte, a la hora de convertir un double en String, existen opciones que permite controlar el formato. Investígalo
*/

import 'dart:convert';

enum RazaPerros { labrador, bodeguero, yorkshire, bulldog }

void main() {
  String n = "420";
  String decimal = "30.03324";
  String verdadero = "true";
  String verduras = "Col de bruselas,Coliflor,Pepino";
  String edades = '{"Miguel Ángel": 24, "Alicia": 22, "Baltasar": 78}';
  String perro = "bulldog";
  String numeros = "1,2,3,4,5";

  //int
  int nString = int.parse(n);
  print(nString);

  //double
  double dString1 = double.parse(decimal);
  String dString2 = dString1.toStringAsFixed(2);
  String dString3 = dString1.toStringAsPrecision(3);
  String dString4 = dString1.toStringAsExponential(2);
  print(dString1);
  print(dString2);
  print(dString3);
  print(dString4);

  //bool
  bool bString = bool.parse(verdadero);
  print(bString);

  //List
  List<String> lString = verduras.split(",");
  print(lString);

  //Map
  Map<String, int> mString = Map<String, int>.from(jsonDecode(edades));
  print(mString);

  //Enum
  RazaPerros eString = RazaPerros.values.byName(perro);
  print(eString);

  //Set
  Set<int> sString = numeros.split(",").map(int.parse).toSet();
  print(sString);
}