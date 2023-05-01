import 'package:left/src/features/presentation/widgets/AlertDialog.dart';
import 'package:left/src/features/presentation/widgets/back_buttom.dart';
import 'package:flutter/material.dart';
import 'package:left/src/features/presentation/widgets/colors.dart';

class ForgotPassword extends StatelessWidget {
  //const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Builder(
          builder: (BuildContext context){
            return backButtom(context, Colors.black);
          }),
      ),
      body:  Center(
        child: Container(
          padding: const EdgeInsets.all(30.0),
          child:  Column(
          children: [
            const Text('Olvido su Password',style:TextStyle(
              color: Colors.indigo,
              fontWeight: FontWeight.bold,
              fontSize: 30.0
            ) ),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: const Text('Por favor introduzca su correo electrónico. recibirá un enlace para crear una nueva contraseña por correo electrónico',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w400,
                fontSize: 12.0
              ) ),
            ),
            _inputLogin(),
            _inputButtom(context)

          ],
        ),
        ),
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
            Icons.email,
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
                    _showAlert(context)
                    //Navigator.pushNamed(context,'forgot')
              },
              child: const Text(
                    'Enviar',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              );

}

void _showAlert(BuildContext context){
  showAlertDialog(context, 
  AssetImage('assets/images/lock.png'), 
  "Su password ha sido reiniciado", 
  "En breve recibirá un correo electrónico con un código para configurar una nueva contraseña", 
  "Hecho!", 
  _goToLoginPage);
}

void _goToLoginPage(BuildContext context){
     Navigator.pushNamed(context, 'login');
}