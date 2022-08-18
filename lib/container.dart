import 'package:flutter/material.dart';
import 'package:api_kullanimi/size_variables.dart';

class container1 extends StatelessWidget {
  Widget widget;
  container1(this.widget);
  Widget build(BuildContext context) {
    size_variables sizeVariables = size_variables(MediaQuery.of(context).size.height,MediaQuery.of(context).size.width);
    return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: sizeVariables.screenH/19,
                      height: sizeVariables.screenH/19,
                      color: Colors.blue,
                      child: Center(
                        child: widget,
                      ),
                    ),
                  );
  }
}