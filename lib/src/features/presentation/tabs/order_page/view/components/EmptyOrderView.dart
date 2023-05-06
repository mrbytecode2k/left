import 'package:flutter/material.dart';
import 'package:left/src/Colors/colors.dart';
import 'package:left/src/features/presentation/commons_widgets/Headers/header_text.dart';

class EmptyOrderView extends StatelessWidget {
  const EmptyOrderView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgGrey,
      appBar: AppBar(
        elevation: 1.0,
        leading: Text(''),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: headerText(
            texto: 'Mi Pedido',
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w600),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                width: 260,
                height: 216,
                image: AssetImage('assets/images/emptyOrder.png'),
              ),
              Container(
                child: headerText(texto: 'Carrito Vacio',fontSize: 25,fontWeight: FontWeight.bold,color: gris),
                margin: EdgeInsets.only(top:20),
                
                ),
              Container(
                margin: EdgeInsets.only(top:20),
                padding: EdgeInsets.symmetric(horizontal:30),
                child: headerText(texto: '¡La buena comida siempre se cocina! Adelante, algunos artículos deliciosos del menú.',
                fontSize: 14,
                textAlign: TextAlign.center,
                color:gris,
                fontWeight: FontWeight.w500
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}