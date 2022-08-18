import 'package:api_kullanimi/column.dart';
import 'package:api_kullanimi/container.dart';
import 'package:flutter/material.dart';

class CardTasarim extends StatelessWidget {
  Widget container2;
  Widget column2;
  CardTasarim(this.container2,this.column2);
  Widget build(BuildContext context) {
    return Card(
            child: SizedBox(
              child: Row(
                children: [
                  container2,
                  Center(child: column2),
                ],
              ),
            ),
          );
  }
}