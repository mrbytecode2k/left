import 'package:flutter/material.dart';
import 'package:left/src/Colors/colors.dart';
import 'package:left/src/Features/presentation/commons_widgets/Headers/header_text.dart';

Widget HeaderDouble({String textHeader="", String textAction =""}) {
  return Container(
      padding: const EdgeInsets.only(top: 10.0),
      child: Row(
        children: [
          headerText(texto: textHeader, fontSize: 20.0),
          Spacer(),
          Row(
            children: [
              GestureDetector(
                
                  child: headerText(
                      texto: textAction,
                      color: orange,
                      fontWeight: FontWeight.w500,
                      fontSize: 15.0)),
            ],
          )
        ],
      ));
}
