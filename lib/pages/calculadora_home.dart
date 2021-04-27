import 'package:calculadorapisos/controllers/calculator_controller.dart';
import 'package:calculadorapisos/core/constants.dart';
import 'package:calculadorapisos/widgets/header_text.dart';
import 'package:calculadorapisos/widgets/number_input_field.dart';
import 'package:calculadorapisos/widgets/primary_button.dart';
import 'package:calculadorapisos/widgets/result_dialog.dart';
import 'package:flutter/material.dart';

class CalculadoraHome extends StatefulWidget {
  @override
  _CalculadoraHomeState createState() => _CalculadoraHomeState();
}

class _CalculadoraHomeState extends State<CalculadoraHome> {
  final _formkey = GlobalKey<FormState>();
  final _controller = CalculatorController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora de pisos"),
        centerTitle: true,
      ),
      body: _buildForm(),
    );
  }

  Widget _buildForm() {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Form(
        key: _formkey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 10.0),
            HeaderText(label: kRoomHeader),
            SizedBox(height: 20.0),
            NumberInputField(
                label: "$kWidth ($kMeters)", onSaved: _controller.setRoomWidth),
            SizedBox(height: 10.0),
            NumberInputField(
                label: "$kLength ($kMeters)",
                onSaved: _controller.setRoomLength),
            SizedBox(height: 30.0),
            HeaderText(label: kFloorHeader),
            SizedBox(height: 20.0),
            NumberInputField(
                label: "$kWidth ($kMeters)",
                onSaved: _controller.setFloorWidth),
            SizedBox(height: 10.0),
            NumberInputField(
                label: "$kLength ($kMeters)",
                onSaved: _controller.setFloorLength),
            SizedBox(height: 20.0),
            NumberInputField(
                label: "$kPreco($kReais)", onSaved: _controller.setFloorPrice),
            SizedBox(height: 30.0),
            PrimaryButton(
              label: "Calcular",
              onPressed: _onCalculate,
            ),
            PrimaryButton(
              label: "Limpar Campos",
              onPressed: resetFields,
            )
          ],
        ),
      ),
    );
  }

  void _onCalculate() {
    if (_formkey.currentState.validate()) {
      _formkey.currentState.save();
      final result = _controller.calculate();
      ResultDialog.show(context, result);
    }
  }

  void resetFields() {
    _formkey.currentState.reset();
  }
}
