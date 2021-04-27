import 'package:calculadorapisos/core/constants.dart';
import 'package:calculadorapisos/models/result_model.dart';
import 'package:flutter/material.dart';

class ResultDialog extends StatelessWidget {
  final ResultModel result;
  const ResultDialog({Key key, this.result}) : super(key: key);
  static void show(BuildContext context, ResultModel result) {
    showDialog(
      context: context,
      builder: (context) => ResultDialog(result: result),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        kAlertName,
        textAlign: TextAlign.center,
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            title: Text("${result.amountPieces} $kFlor"),
            subtitle: Text(kAmountFloors),
          ),
          ListTile(
            title: Text("${result.amountFooter} $kFlor"),
            subtitle: Text(kAmountFloorsToFooter),
          ),
          ListTile(
            title: Text("${result.amountPiecesAndFooter} $kFlor"),
            subtitle: Text(kTotalFloor),
          ),
          ListTile(
            title: Text("${result.ttPrice} $kReais"),
            subtitle: Text(kAmountPrice),
          ),
          ListTile(
            title: Text("${result.areaWithoutFooter} $kSqrMeters"),
            subtitle: Text(kAreaWithoutFooter),
          ),
          ListTile(
            title: Text("${result.areaWithFooter} $kSqrMeters"),
            subtitle: Text(kAreaWithFooter),
          )
        ],
      ),
    );
  }
}
