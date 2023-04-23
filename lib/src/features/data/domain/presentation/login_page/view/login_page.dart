import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:left/src/features/data/domain/presentation/widgets/colors.dart';
import 'package:left/src/features/data/domain/presentation/widgets/back_buttom.dart';
import 'package:left/src/features/data/domain/presentation/forgot_page/view/forgot_password_page.dart';
import 'package:left/src/features/data/domain/presentation/signup/view/signup_page.dart';



class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.black);

    return  Scaffold(
      body:  Column(
          children: [
            Stack(
              children: [
                Image(
                  width: double.infinity,
                  height: 350.0,
                  fit:BoxFit.cover,
                  image: AssetImage('assets/images/snack-left-600.jpg')
                  ),

                  Container(
                    //margin: ,
                    margin:EdgeInsets.only(top:50.0),
                    child: backButtom(context, Colors.white),
                  )

            ],
            ),
           Transform.translate(
            
            offset: Offset(0.0, -10.0),
              child: Container(
              width: double.infinity,
              height: 500,
              
              decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(20.0),
                 boxShadow: [
      BoxShadow(
        
        color: Colors.black,
        blurRadius: 80,
        offset: Offset(50, 25), 
        spreadRadius: 10.0, // has the effect of extending the shadow
        // Shadow position
      ),
],
                 ),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Center(
                  child: Column(
                    children: [
                      Text('Bienvenido de Nuevo', style: TextStyle(
                        color: indigo,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0
                      ),),
                      Text('Inicia sesion con tu cuenta', style: TextStyle(
                        color: Theme.of(context).disabledColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 15.0
                      ),),
                      _inputLogin(),
                      _inputPassword(),
                      _inputButtom(context),

                      Container(
                        margin: const EdgeInsets.only(top:30.0),
                        child: GestureDetector(
                          onTap:(){
                              Navigator.pushNamed(context,'forgotpass');
                             },
                        child: const Text('Olvido su Password?',style: TextStyle(
                          color:Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 17.0
                        )),)
                      ),
                      Container(
                        margin: EdgeInsets.only(top:30.0),
                      child:   Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('No tengo una Cuenta',style: TextStyle(
                                  color: gris,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15.0
                                )),
                      

                       Container(
                            margin: EdgeInsets.symmetric(horizontal: 10.0),
                            child: GestureDetector(
                          onTap:(){
                              Navigator.pushNamed(context,'sign-up');
                             },
                            
                             child: const Text('Registrarse',style: TextStyle(
                                color: Colors.orangeAccent,
                                fontWeight: FontWeight.w400,
                                fontSize: 15.0
                                 )),
                           ),
                       ), 
                        ],
                      )

                      )


                    ],
                  ),
                ),
              ),
             ),
           )
          ],
        ),

    );
  }
}

Widget _inputLogin(){

return Container(
  margin: const EdgeInsets.only(top: 40.0),
  padding: const EdgeInsets.only(left: 20.0),
  decoration:  BoxDecoration(
    color:Color.fromRGBO(142, 142, 147, 1.2),
    borderRadius:  BorderRadius.circular(30.0)
  ),
  child:const TextField(
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
       prefixIcon: const Icon(
            Icons.manage_accounts,
            color: Colors.grey,
            size: 22,
          ),
      hintText: 'Email',
        border: OutlineInputBorder(
          borderSide:BorderSide.none
        )

    ),
  ),
);

}

Widget _inputPassword(){

return Container(
  margin: const EdgeInsets.only(top: 20.0),
  padding: const EdgeInsets.only(left: 20.0),
  decoration:  BoxDecoration(
    
    color:Color.fromRGBO(142, 142, 147, 1.2),
    borderRadius:  BorderRadius.circular(30.0)
  ),
  child:const TextField(
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
       prefixIcon: const Icon(
            Icons.lock,
            color: Colors.grey,
            size: 22,
          ),
      hintText: 'Password',
        border: OutlineInputBorder(
          borderSide:BorderSide.none
        )

    ),
  ),
);
}

Widget _inputButtom(BuildContext context){

return Container(
                margin: const EdgeInsets.only(top: 30.0),
                width: 360.0,
                height: 50.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  ),
                  onPressed: ()=>{
                    Navigator.pushNamed(context,'tabs-page')
              },
              child: const Text(
                    'Iniciar sesión',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              );

}