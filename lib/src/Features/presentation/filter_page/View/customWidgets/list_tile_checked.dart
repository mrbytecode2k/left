import 'package:flutter/material.dart';
import 'package:left/src/Colors/colors.dart';
import 'package:left/src/Features/presentation/commons_widgets/Headers/header_text.dart';


class ListTileCheck extends StatefulWidget {
  final String texto;
  final bool isActive;
  final Function()? func;

  const ListTileCheck(
      {Key? key,
      required this.texto,
      required this.isActive,
      required this.func})
      : super(key: key);
  @override
  _ListTileCheckState createState() => _ListTileCheckState();
}

class _ListTileCheckState extends State<ListTileCheck> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        listTiles(
            context: context,
            texto: widget.texto,
            isActive: widget.isActive,
            func: widget.func)
      ],
    );
  }
}

Widget listTiles(
    {required BuildContext context,
    texto = String,
    isActive = bool,

    Function()? func}) 
    {
    return Container(
    decoration: BoxDecoration(
        border:
            Border(bottom: BorderSide(color: Theme.of(context).dividerColor))),
    child: ListTile(
      onTap: func,
      title: headerText(
          texto: texto,
          color: isActive ? orange : Colors.black,
          fontWeight: FontWeight.w300,
          fontSize: 14),
      trailing: isActive
          ? Icon(
              Icons.check,
              color: isActive ? orange : gris,
            )
          : const Text(''),
    ),
  );
}