import 'package:flutter/material.dart';

class text1 extends StatelessWidget {
  var written;
  double size;
  text1(this.written,this.size);
  Widget build(BuildContext context) {
    return Text(
        written,
        style: TextStyle(
        fontSize: size,
      ),
    );
  }
}