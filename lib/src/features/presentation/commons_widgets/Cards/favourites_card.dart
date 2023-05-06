import 'package:flutter/material.dart';
import '../../../../Colors/colors.dart';
import '../Headers/header_text.dart';

Widget favouritesCard(
    {required BuildContext context,
    double marginTop = 0.0,
    double marginBottom = 0.0,
    double marginLeft = 0.0,
    double marginRigth = 0.0,
    required ImageProvider<Object> image,
    String title = "",
    String subTitle = "",
    String review = "",
    String rating = "",
    String buttonText = "",
    bool hasButton = false,
    bool isFavourite = false}) {
  return Container(
    margin: EdgeInsets.only(
        top: marginTop,
        right: marginRigth,
        left: marginLeft,
        bottom: marginBottom),
    padding: EdgeInsets.only(left: 20, top: 20, bottom: 20),
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.0),
      color:Colors.white,
      boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(210, 211, 215, 1.0),
          offset: Offset(0,5),
          blurRadius: 10.0
        )
      ]
    ),
    child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image(width: 90, height: 90, fit: BoxFit.cover, image: image),
        ),
        Container(
          padding: EdgeInsets.only(left: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 7.0),
                      child: headerText(texto: title,color: Colors.black, fontWeight: FontWeight.bold,fontSize: 17.0)
                      ),

                      SizedBox(width: 80.0,),
                                    IconButton(onPressed: (){}, 
                 icon: Icon(
                  Icons.bookmark,
                  size: 35.0,
                  color: isFavourite ? rosa : Colors.grey[300] 
                  )),

                ],
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(bottom: 5.0),
                child: Text(
                  subTitle,
                  style: TextStyle(
                      color: gris, fontWeight: FontWeight.w500, fontSize: 13.0),
                ),
              ),
Row(
                children: [
                  Icon(Icons.star, color: amarillo, size: 16.0),
                  headerText(texto:review,color: Colors.black,fontWeight: FontWeight.w500,fontSize: 13.0,),
                  headerText(texto:rating,color: gris,fontWeight: FontWeight.w500,fontSize: 13.0),
                    
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15.0),
                    width: 100.0,
                    height: 25.0,
                    child:  ElevatedButton(
                            onPressed: () {
                              //Navigator.pushNamed(context,'login');
                              },
                            child: headerText(texto:buttonText,color: Colors.white, fontSize: 11.0),
                             style: ElevatedButton.styleFrom(
                              elevation: 0.5,
                              primary: Colors.orange,
                              shape: StadiumBorder(),
                            ),
                          )
                        
                  )
                ],
              ),


            ],
          ),
        ),
      ],
    ),
  );
}
