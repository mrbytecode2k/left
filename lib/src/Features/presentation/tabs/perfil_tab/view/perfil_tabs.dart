import 'package:flutter/material.dart';
import 'package:left/src/Colors/colors.dart';
import 'package:left/src/Features/presentation/commons_widgets/Headers/header_text.dart';

class PerfilTabs extends StatelessWidget {
const PerfilTabs({Key? key}): super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _header(),
          
        ],
      ),
    );
  }
}


Widget _header(){

  return Container(
    height: 250,
    color: bgGrey,
    padding: const EdgeInsets.all(50),

    
    child: Row(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage('https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
          radius: 60,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left:20),
              child: Row(
                children: [
                  headerText(texto:'Fahed Olba',fontSize: 20,fontWeight: FontWeight.w500),
                  IconButton(onPressed: null, icon: Icon(Icons.chevron_right))
                ],
              ),
            ),
            Container(
               margin: const EdgeInsets.only(left:20),
               child:ElevatedButton(
          onPressed: () {
            //Navigator.pushNamed(context,'login');
          },
          child: Row(
            children: [
              Image(
                width: 16,
                height: 16,
                image: AssetImage('assets/images/crown.png')),
                Container(
                  margin: const EdgeInsets.only(left:5.0),
              child: headerText(texto: 'Miembro VIP', color: Colors.white, fontSize: 12.0),
                ),
            ],
          ),
          
          style: ElevatedButton.styleFrom(
            elevation: 0.5,
            primary: Colors.orange,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            
          ),
          
        ) 

            ),
          ],
        ),
        
      ],
    ),

  );


  
}