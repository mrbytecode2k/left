import 'package:flutter/material.dart';
import 'package:left/src/features/presentation/commons_widgets/Alerts/AlertDialog.dart';
import 'package:left/src/Colors/colors.dart';


class CuisinesFilter extends StatefulWidget {
  const CuisinesFilter({Key? key }) : super(key: key);
  @override
  State<CuisinesFilter> createState() => _CuisinesFilterState();
}

class _CuisinesFilterState extends State<CuisinesFilter> {

  bool btnAmerican = false;
  bool btnSushi = false;
  bool btnAsia = false;
  bool btnPizza = false;
  bool btnDesserts = false;
  bool btnFastFood = false;
  bool btnVietnamese = false;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _rounderButtomFil((){
              setState(() => btnAmerican = !btnAmerican);
            }, btnAmerican, "American"),
            _rounderButtomFil((){
              setState(()=> btnAsia =!btnAsia);
            }, btnAsia, "Asia"),
                _rounderButtomFil((){
              setState(()=> btnSushi =!btnSushi);
            }, btnSushi, "Sushi"),
                _rounderButtomFil((){
              setState(()=>btnPizza=!btnPizza);
            }, btnPizza, "Pizza"),
          ],

        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          
          children: [
                        _rounderButtomFil((){
              setState(()=>btnDesserts=!btnDesserts);
            }, btnDesserts, "Desserts"),
            _rounderButtomFil((){
              setState(()=>btnFastFood=!btnFastFood);
            }, btnFastFood, "FastFood"),
            _rounderButtomFil((){
              setState(()=>btnVietnamese=!btnVietnamese);
            }, btnVietnamese, "Vietnamese"),

          ],
        ),
      ],
    );
  }
}


Widget _rounderButtomFil(Function func,bool isActive, String labelText ){

  return ElevatedButton(
      onPressed: () {
        func();
        //print("dskjfhskdjhfskjdhfksjdhf");
        },
        style: ElevatedButton.styleFrom(
                    elevation: 0.5,
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    side: BorderSide(
                      color:isActive ? orange : gris)
                  ),
    ),
    child:Text(labelText,
       style:TextStyle(color: isActive ? orange : gris,fontSize: 12.0)
      ) 

  );
}