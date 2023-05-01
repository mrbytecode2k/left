import 'package:flutter/material.dart';
import 'package:left/src/features/presentation/widgets/header_text.dart';
import 'package:left/src/features/presentation/filter_page/View/customWidgets/custom_filters.dart';
import 'package:left/src/features/presentation/widgets/colors.dart';
import 'package:left/src/features/presentation/filter_page/View/customWidgets/list_tile_checked.dart';
import 'package:left/src/features/presentation/filter_page/View/customWidgets/price_filter.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({Key? key}) : super(key: key);
   @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  //SORT BY BOOLEANS
  bool topRated = false;
  bool nearMe = false;
  bool costHighToLow = false;
  bool costLowToHigh = false;
  bool mostPopular = false;

//FILTER BY BOOLEANS
  bool openNow = false;
  bool creditsCards = false;
  bool alcoholServed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: _appBar(context),
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverList(
                delegate: SliverChildListDelegate([
              Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 15.0, bottom: 15.0, left: 15.0),
                  child: headerText(
                      texto: "CUISINES",
                      color: gris,
                      fontWeight: FontWeight.w600,
                      fontSize: 15.0)),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: CuisinesFilter(),
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 15.0, bottom: 15.0, left: 15.0),
                  child: headerText(
                      texto: "ORDENAR POR",
                      color: gris,
                      fontWeight: FontWeight.w600,
                      fontSize: 15.0)),
                      _sortByContainer(),
              Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 15.0, bottom: 5.0, left: 15.0),
                  child: headerText(
                      texto: "FILTRAR POR",
                      color: gris,
                      fontWeight: FontWeight.w600,
                      fontSize: 15.0)),
                    _filterByContainer(),  
                                  Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 15.0, bottom: 5.0, left: 15.0),
                  child: headerText(
                      texto: "PRECIO",
                      color: gris,
                      fontWeight: FontWeight.w600,
                      fontSize: 15.0)),
                      PriceFilter(),
    
              
            ]))
          ],
        ));
  }

Widget _sortByContainer(){

return Container(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  children: [
                    ListTileCheck(
                        texto: 'Mas valorado',
                        isActive: topRated,
                           func: () {
                          setState(() => topRated = !topRated);
                        },
                        ),
                       
                    ListTileCheck( 
                      texto: 'Mas Cerca de mi',
                      isActive: nearMe,
                      func: (){
                        setState(() =>nearMe=!nearMe);
                        },
                      ),
                      ListTileCheck( 
                      texto: 'Costo alto a bajo',
                      isActive: costHighToLow,
                      func: (){
                        setState(() =>costHighToLow=!costHighToLow);
                        },
                      ),
                      ListTileCheck( 
                      texto: 'Costo bajo a alto',
                      isActive: costLowToHigh,
                      func: (){
                        setState(() =>costLowToHigh=!costLowToHigh);
                        },
                      ),
                      ListTileCheck( 
                      texto: 'Mas popular',
                      isActive: mostPopular,
                      func: (){
                        setState(() =>mostPopular=!mostPopular);
                        },
                      ),
                  ],
                ),
              );
  
}

Widget _filterByContainer(){

return Container(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  children: [
                    ListTileCheck(
                        texto: 'Open Now',
                        isActive: openNow,
                           func: () {
                          setState(() => openNow = !openNow);
                        },
                        ),
                       
                    ListTileCheck( 
                      texto: 'Credit card',
                      isActive: creditsCards,
                      func: (){
                        setState(() =>creditsCards=!creditsCards);
                        },
                      ),
                      ListTileCheck( 
                      texto: 'Alcohol Served',
                      isActive: alcoholServed,
                      func: (){
                        setState(() =>alcoholServed=!alcoholServed);
                        },
                      ),
                  ],
                ),
              );
}
}

Widget _appBar(BuildContext context) {
  return AppBar(
    elevation: 0.5,
    backgroundColor: Colors.white,
    title: Container(
        padding: const EdgeInsets.only(left: 100),
        child: headerText(texto: "Filtros", fontWeight: FontWeight.w600)),
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
              texto: "OK",
              color: Colors.orange,
              fontWeight: FontWeight.w500,
              fontSize: 17.0),
        ),
      )
    ],
  );



}


