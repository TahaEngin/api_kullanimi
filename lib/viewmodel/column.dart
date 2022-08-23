import 'package:api_kullanimi/viewmodel/text.dart';
import 'package:flutter/material.dart';
import 'package:api_kullanimi/model/size_variables.dart';

class column1 extends StatelessWidget {
  Widget text2;
  Widget text3;
  Widget text4;
  Widget text5;
  Widget row1;
  column1(this.text2,this.text3,this.text4,this.text5,this.row1);
  Widget build(BuildContext context) {
    size_variables sizeVariables = size_variables(MediaQuery.of(context).size.height,MediaQuery.of(context).size.width);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                      height: sizeVariables.screenH/192,
                      ),
                      text2,
                          SizedBox(
                            height: sizeVariables.screenH/192,),
                     text3,
                          SizedBox(
                            height: sizeVariables.screenH/192,
                          ),
                      text4,
                          SizedBox(
                            height: sizeVariables.screenH/192,
                          ),
                    text5,
                          SizedBox(
                            height: sizeVariables.screenH/192,
                          ),
                    row1,
                          SizedBox(
                            height: sizeVariables.screenH/192,
                          ),
                    ],
    );
  }
}
