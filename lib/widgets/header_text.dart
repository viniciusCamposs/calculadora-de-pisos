import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  final String label;

  const HeaderText({Key key, this.label}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).accentColor.withOpacity(0.6),
      ),
      child: Text(
        label,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black
        ),
      ),
    );
  }
}
