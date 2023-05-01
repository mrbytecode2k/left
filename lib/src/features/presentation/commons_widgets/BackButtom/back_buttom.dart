import 'package:flutter/material.dart';

Widget backButtom(BuildContext context, Color color){

    return IconButton(

       onPressed: (){
        Navigator.pop(context);
      },
      icon: const Icon(Icons.arrow_back),
      color: color
     
    );

}
