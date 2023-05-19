import 'package:flutter/material.dart';
import 'package:left/src/Features/presentation/welcome_page/view/welcome_page.dart';
import 'package:left/src/Features/presentation/login_page/view/login_page.dart';
import 'package:left/src/Features/presentation/forgot_page/view/forgot_password_page.dart';
import 'package:left/src/Features/presentation/commons_widgets/BackButtom/back_buttom.dart';

class SignupPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Builder( builder: (BuildContext context){
          return backButtom(context,Colors.black);

        }),
      ),
        body:  Center(
        child: SingleChildScrollView(  
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child:  Column(
          children: [
            const Text('Crear una Cuenta',style:TextStyle(
              color: Colors.indigo,
              fontWeight: FontWeight.bold,
              fontSize: 30.0
            ) ),
            
             _username(context),
             _email(context),
             _phone(context),
             _dateofbird(context),
             _password(context),
             _send(context),

             Container(
              
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
              child: Text(
                "Al hacer clic en registrarse, acepta los siguientes términos y condiciones sin reservas",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 13.0
                ) ,
                 ),
             )
          ],
        ),
        ),
      ),
      ),
    );
  }
}

Widget _username(BuildContext context){

return Container(
  margin: const EdgeInsets.only(top: 30.0),
  padding: const EdgeInsets.only(left: 20.0),
  decoration:  BoxDecoration(
    color:Color.fromRGBO(142, 142, 147, 1.2),
    borderRadius:  BorderRadius.circular(30.0)
  ),
  child:const TextField(
    keyboardType: TextInputType.text,
    decoration: InputDecoration(
            prefixIcon: const Icon(
            Icons.account_circle_sharp,
            color: Colors.grey,
            size: 22,
          ),
      hintText: 'Nombre de Usuario ',
        border: OutlineInputBorder(
          borderSide:BorderSide.none
        )
    ),
  ),
);
}

Widget _email(BuildContext context){

return Container(
  margin: const EdgeInsets.only(top: 10.0),
  padding: const EdgeInsets.only(left: 20.0),
  decoration:  BoxDecoration(
    color:Color.fromRGBO(142, 142, 147, 1.2),
    borderRadius:  BorderRadius.circular(30.0)
  ),
  child:const TextField(
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
            prefixIcon: const Icon(
            Icons.email,
            color: Colors.grey,
            size: 22,
          ),
      hintText: 'Email ',
        border: OutlineInputBorder(
          borderSide:BorderSide.none
        )

    ),
  ),
);

}

Widget _phone(BuildContext context){

return Container(
  margin: const EdgeInsets.only(top: 10.0),
  padding: const EdgeInsets.only(left: 20.0),
  decoration:  BoxDecoration(
    color:Color.fromRGBO(142, 142, 147, 1.2),
    borderRadius:  BorderRadius.circular(30.0)
  ),
  child:const TextField(
    keyboardType: TextInputType.phone,
    decoration: InputDecoration(
            prefixIcon: const Icon(
            Icons.phone,
            color: Colors.grey,
            size: 22,
          ),
      hintText: 'Telefono',
        border: OutlineInputBorder(
          borderSide:BorderSide.none
        )

    ),
  ),
);

}

Widget _dateofbird(BuildContext context){

return Container(
  margin: const EdgeInsets.only(top: 10.0),
  padding: const EdgeInsets.only(left: 20.0),
  decoration:  BoxDecoration(
    color:Color.fromRGBO(142, 142, 147, 1.2),
    borderRadius:  BorderRadius.circular(30.0)
  ),
  child:const TextField(
    keyboardType: TextInputType.phone,
    decoration: InputDecoration(
            prefixIcon: const Icon(
            Icons.date_range_outlined,
            color: Colors.grey,
            size: 22,
          ),
      hintText: 'Fecha de Nacimiento',
        border: OutlineInputBorder(
          borderSide:BorderSide.none
        )

    ),
  ),
);
}

Widget _password(BuildContext context){

return Container(
  margin: const EdgeInsets.only(top: 10.0),
  padding: const EdgeInsets.only(left: 20.0),
  decoration:  BoxDecoration(
    color:Color.fromRGBO(142, 142, 147, 1.2),
    borderRadius:  BorderRadius.circular(30.0)
  ),
  child:const TextField(
    keyboardType: TextInputType.visiblePassword,
    decoration: InputDecoration(
            prefixIcon: const Icon(
            Icons.password,
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


Widget _send(BuildContext context){
  return Container(
    width: 370,
    height: 50.0,
    margin: const EdgeInsets.only(top: 50.0),
    child: ElevatedButton(
      onPressed: () {
        //Navigator.pushNamed(context,'login');
        },
      child:Text("Registrar",
      style:TextStyle(color: Colors.white,fontSize: 17.0)
      ) ,
       style: ElevatedButton.styleFrom(
                    primary: Colors.orangeAccent,
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  ),
    ),
  );
}