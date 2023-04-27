import 'package:flutter/material.dart';
import 'package:left/src/features/data/domain/presentation/widgets/header_text.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: PreferredSize(
      preferredSize: const Size.fromHeight(60.0),
      child: _appBar(context),
    ));
  }
}

Widget _appBar(BuildContext context) {
  return AppBar(
        elevation: 0.5,
    backgroundColor: Colors.white,
    title: Container(
      padding: const EdgeInsets.only(left:100),
      child: headerText(texto: "Filtros",fontWeight: FontWeight.w600)),
        leading: Container(
      padding: const EdgeInsets.only(top: 20, left: 7.0),
      child: headerText(
          texto: "Reset", fontWeight: FontWeight.w500, fontSize: 17.0),
    ),
    actions: [
      GestureDetector(
        child: Container(
          padding: const EdgeInsets.only(top: 20, right: 10.0),
          child: headerText(
              texto: "Hecho",
              color: Colors.orange,
              fontWeight: FontWeight.w500,
              fontSize: 17.0),
        ),
      )
    ],
  );
}
