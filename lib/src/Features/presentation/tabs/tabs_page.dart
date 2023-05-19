import 'package:flutter/material.dart';
import 'package:left/src/Features/presentation/tabs/explorer_tab/view/explorer_tab.dart';
import 'package:left/src/Features/presentation/tabs/order_page/view/my_order_tab.dart';
import 'package:left/src/Features/presentation/tabs/favorito_tab/view/favorito_tabs.dart';
import 'package:left/src/Features/presentation/tabs/perfil_tab/view/perfil_tabs.dart';
import 'package:left/src/Features/presentation/commons_widgets/Alerts/AlertDialog.dart';

class TabsPage extends StatefulWidget {
  const TabsPage({Key? key}) : super(key: key);
  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      _getLocation(context);
    });
  }
  List<Widget> _widgetOptions = [
    ExplorerTabs(),
    OrderTabs(),
    FavoritoTabs(),
    PerfilTabs(),
  ];

  int _selectedItemIndex = 0;
  void _changeWidget(int index) {
    setState(() {
      _selectedItemIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedItemIndex),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }
Widget _bottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
        iconSize: 30.0,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedItemIndex,
        onTap: _changeWidget,
        showSelectedLabels: true,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: "Explorar"),
          BottomNavigationBarItem(
              icon: Icon(Icons.assignment_add), label: "Mis Ordenes"),
          BottomNavigationBarItem(
              icon: Icon(Icons.book_outlined), label: "Favorito"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_pin), label: "Mi perfil")
        ]);
  }
Future _getLocation(BuildContext context) async {
    await showAlertDialog(
        context,
        AssetImage('assets/images/location.png'),
        "Activa tu ubicación",
        "Por favor permita usar su ubicación para gestionar su envio",
        "Activar ubicación",
        _goToLoginPage);
  }
}
void _goToLoginPage(BuildContext context) {
  Navigator.pushNamed(context, 'login');
}