import 'package:calculadorapisos/core/theme_app.dart';
import 'package:calculadorapisos/pages/calculadora_home.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Calculadora de pisos",
      theme: kAppTheme,
      home: CalculadoraHome(),
    );
  }
}
