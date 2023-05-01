import 'package:flutter/material.dart';
import 'colors.dart';
import 'header_text.dart';

Widget popularesCard({
  required BuildContext context, 
  double marginTop =0.0,
  double marginBottom =0.0,
  double marginLeft =0.0,
  double marginRigth =0.0,
  required ImageProvider<Object> image,
  String title="",
  String subTitle="",
  String review="",
  String rating="",
  String buttonText="",
  bool hasButton=false,
  }) {

  return Column(
    children: [
      GestureDetector(
        onTap:(){
          Navigator.pushNamed(context, 'place-detail');
        
    },

      child:Container(
        margin:  EdgeInsets.only(top: marginTop,right: marginRigth,left:marginLeft,bottom: marginBottom),
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image(
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                  image: image),
            ),
            Container(
              padding: EdgeInsets.only(left: 15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 7.0),
                      child: headerText(
                          texto:title, color:Colors.black,fontWeight: FontWeight.bold, fontSize:17.0)),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(bottom: 5.0),
                    child: Text(
                      subTitle,
                      style: TextStyle(
                          color: gris,
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: amarillo, size: 16.0),
                      Text(
                        review,
                        style: TextStyle(
                            color: Colors.black,  
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left:5.0),
                        child: Text(
                          
                          rating,
                          style: TextStyle(
                              color: gris,
                              
                              fontWeight: FontWeight.w500,
                              fontSize: 13.0),
                        ),
                      ),
            Container(
                    margin: EdgeInsets.only(left: 40.0),
                    width:110.0,
                    height: 30.0,
                    child: hasButton ? ElevatedButton(
                      onPressed: () {
                        //Navigator.pushNamed(context,'login');
                      },
                      child: Text("delivery",
                          style: TextStyle(color: Colors.white, fontSize: 11.0)),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepOrangeAccent,
                        shape: StadiumBorder(),
                      ),
                    ):Text(""),
                  )
            
            
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      )
    ],
  );
}
