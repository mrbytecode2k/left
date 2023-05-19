import 'package:flutter/material.dart';
import '../Headers/header_text.dart';
import '../../../../Colors/colors.dart';

//AssetImage('assets/images/lock.png'),
Future showAlertDialog(
    BuildContext context,
    ImageProvider<Object> imagePath,
    String headerMessageTitle,
    String headerMessageSubTitle,
    String headermessageLabel,
    Function domeFunction) async {
  await showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30.0))),
          content: Container(
            height: 300,
            child: Column(
              children: [
                Image(image: imagePath, width: 100, height: 100),
                Container(
                  margin: EdgeInsets.all(15.0),
                  child: Text(headerMessageTitle,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: indigo,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0)),
                ),
                Container(
                  margin: EdgeInsets.all(5.0),

                  //"En breve recibirá un correo electrónico con un código para configurar una nueva contraseña"
                  child: Text(headerMessageSubTitle,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: indigo,
                          fontWeight: FontWeight.w400,
                          fontSize: 15.0)),
                ),
                _buttomdone(context, headermessageLabel,domeFunction),
              ],
            ),
          ),
        );
      });
}

Widget _buttomdone(BuildContext context, String label, Function doneButton) {
  return Container(
    width: 370,
    height: 40.0,
    margin: const EdgeInsets.only(top: 10.0),
    child: ElevatedButton(
      onPressed: () {
        doneButton;
      },
      child: Text(label, style: TextStyle(color: Colors.white, fontSize: 17.0)),
      style: ElevatedButton.styleFrom(
        primary: Colors.orangeAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    ),
  );
}
