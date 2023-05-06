import 'package:flutter/material.dart';
import '../../../../Colors/colors.dart';
import '../Headers/header_text.dart';

Widget cardVertical({
  required BuildContext context,
  double? width, 
  double? height,
  required ImageProvider<Object> image,
  String title="",
  String subTitle="",
  }
) 

  {
  return Container(
    margin: const EdgeInsets.all(10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image(
              width: width,
              height: height,
              fit: BoxFit.cover,
              image: image,
              //image: NetworkImage("https://images.unsplash.com/photo-1579584425555-c3ce17fd4351?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1527&q=80"),)
              )),
         Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: const EdgeInsets.only(top: 5.0),
                child: headerText(
                    texto: title,
                    fontWeight: FontWeight.w500,
                    fontSize: 17.0)),
            Container(
                margin: const EdgeInsets.only(top: 2.0),
                child: headerText(
                    texto: subTitle,
                    fontWeight: FontWeight.w400,
                    fontSize: 13.0,
                    color: gris)),
          ],
        ),
      ],
    ),
  );
}