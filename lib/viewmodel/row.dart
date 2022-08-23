import 'package:api_kullanimi/viewmodel/text.dart';
import 'package:flutter/material.dart';
import 'package:api_kullanimi/model/size_variables.dart';

class row1 extends StatelessWidget {
  Widget text2;
  Widget text3;
  row1(this.text2,this.text3);
  Widget build(BuildContext context) {
    size_variables sizeVariables = size_variables(MediaQuery.of(context).size.height,MediaQuery.of(context).size.width);
    return Row(
      children: [
        text2,
        SizedBox(width: sizeVariables.screenW/192),
        text3,
      ],
    );
  }
}