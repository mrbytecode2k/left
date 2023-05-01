import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:left/src/features/presentation/login_page/view/login_page.dart';
import 'dart:ui' as ui;
class WelcomePage extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image:  DecorationImage(
                  fit:BoxFit.cover,
                    image: const NetworkImage('https://www.cordobabn.com/asset/thumbnail,992,558,center,center/media/cordobabn/images/2022/12/17/2022121713510276646.jpg'),
              ),
            ),
            child: BackdropFilter(
               filter: ui.ImageFilter.blur(sigmaX: 2.0, sigmaY: 1.0),
               child: Container(
                color: Colors.black.withOpacity(0.2)
               ), 
                  ),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: const Text('LEFT entrega tu pedido de comida rápida en tu casa.',style: TextStyle(
                    color:Colors.white,
                    fontSize: 42.0,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical:38.0 ),
                  child: const Text('Establezca la ubicación exacta para encontrar su direccion de entrega. ',style: TextStyle(
                    color:Colors.white,
                    fontSize: 17.0,
                    fontWeight: FontWeight.w500,
                  ),),
                ),
const SizedBox(
            height: 50.0,
          ),
              Container(
                                margin: const EdgeInsets.only(top: 30.0),

                width: 340.0,
                height: 50.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  ),
                  onPressed: ()=>{
                    Navigator.pushNamed(context, 'login')
              },
                  child: const Text(
                    'Iniciar sesión',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

Container(
                margin: const EdgeInsets.only(top: 30.0),
                width: 340.0,
                height: 50.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  ),
                  onPressed: ()=>{
                    
              },
                  child:   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      
                      Image.asset('assets/images/facebook.png',
                      width: 25.0,
                      height:25.0,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10.0),
                         child: const Text(
                          'Conectar con Faceebok',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.white,
                          ),
                                             ),
                       ),
                    ],
                  ),
                ),
              ),
              ],
          )
            

        ],
      ),
    );
       
  }
}