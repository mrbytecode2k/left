import 'package:flutter/material.dart';
import 'package:left/src/Colors/colors.dart';
import 'package:left/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:left/src/features/presentation/tabs/order_page/view/components/EmptyOrderView.dart';

class OrderTabs extends StatelessWidget {
  //const OrderTabs({Key? key}): super(key:key);
  final emptyOrderState = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgGrey,
      body: emptyOrderState ? EmptyOrderView(): CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 1.0,
        leading: Text(''),
        backgroundColor: Colors.white,
        centerTitle: true,
        
        title: headerText(
            texto: 'Mi Pedido',
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w600),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    children: [
                    _orders(context) ,
                    _checkOutResume(context),
                    ],
                  ),
                )
              ]
            )
            )
        ],
      ),
    );
  }
}

Widget _orders(BuildContext context){
  return Column(
    children: [
      _cardOrders(context)
    ],
  );
}

Widget _cardOrders(BuildContext context){
  return Container(
    padding: const EdgeInsets.symmetric(horizontal:10.0),
    margin: EdgeInsets.symmetric(vertical: 10.0),
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Color.fromRGBO(248, 248, 248, 1.0),
      boxShadow: [
        BoxShadow(
          color:Color.fromRGBO(210, 211, 215, 1.0),
          spreadRadius: 1.0,
          blurRadius: 5.0
        ),
      ],
    ),
    child: Column(
      children: [
        Row(
          children: [
            _cardOrderTopContent()
          ],
        ),
        Column(
          children: [
            _items(context),
            _items(context),
            _items(context),
            _items(context),
          ],
        ),
        _moreContent(context),
      ],
    ),
  );
}

Widget _cardOrderTopContent(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top:7.0,bottom: 7.0,right: 7.0),
          child: headerText(texto:'Little Creatures -  Club Street',fontSize: 20.0,fontWeight: FontWeight.bold),
      ),
      Container(
        child: Row(
          children: [
            Icon(Icons.location_on,color: gris,size:16.0),
            headerText(texto:'87 Carretera nacional',color:gris,fontSize: 14.0,fontWeight: FontWeight.w400),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              width: 110.0,
              height: 20.0,
              child:ElevatedButton(
          onPressed: () {
            //Navigator.pushNamed(context,'login');
          },
          child: headerText(
              texto: 'Free delivery', color: Colors.white, fontSize: 12.0),
          style: ElevatedButton.styleFrom(
            elevation: 0.5,
            primary: Colors.orange,
            shape: StadiumBorder(),
          ),
        )
            )

          ],
        ),
      ),
    ],
  ),
);
}

Widget _items(context){
  return Container(
    padding: const EdgeInsets.only(top:20),
    decoration: BoxDecoration(
      border:Border(bottom: BorderSide(color:Theme.of(context).dividerColor))
    ),
    child: ListTile(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          headerText(texto: 'Special Granjero mel',color:orange,fontWeight: FontWeight.w300, fontSize: 15.0),
          headerText(texto: 'Vegetales mixtos,huevos de gallina',color:gris,fontWeight: FontWeight.w300, fontSize: 12.0)
        ],
      ),
      trailing:headerText(texto: '170bs',color:gris,fontWeight: FontWeight.w500, fontSize: 12.0)
    ),
  );
}


Widget _moreContent(BuildContext context){
  return Container(
    //padding: const EdgeInsets.only(bottom: 10.0),
    child:ListTile(
      title: headerText(texto: 'Agregar mas articulos',color:Colors.deepOrangeAccent,fontWeight: FontWeight.w500, fontSize: 12.0),
    )

  );

}


Widget _checkOutResume(BuildContext context){

 return Container(
  
  padding: EdgeInsets.all(10),
  margin: EdgeInsets.symmetric(vertical:10),
  width: double.infinity,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20.0),
    color:white,
    boxShadow: [
      BoxShadow(
        color: Color.fromRGBO(210, 211, 215, 1.0),
        spreadRadius: 1.0,
        blurRadius: 4.0,
      ),
    ],
  ),
  child:Column(
    children: [
      _itemsCheckOutResume(title: 'Subtotal',value: '68\$',context:context),
      _itemsCheckOutResume(title: 'Tax & Fee',value: '3\$',context:context),
      _itemsCheckOutResume(title: 'Delivery',value: '0.00\$',context:context),
      _buttonCheckOut(context),

    ],

  ),
  
);
}


Widget _itemsCheckOutResume({title:String,value:String,context:BuildContext})
{
  return Container(
    decoration: BoxDecoration(
      border: Border(bottom: BorderSide(color:Theme.of(context).dividerColor)
     ),
  ),
  child: ListTile(
    title: headerText(texto:title,fontWeight: FontWeight.w400,fontSize: 15.0),
    trailing: headerText(texto:value,fontWeight: FontWeight.w500,fontSize: 15.0),
    

  ),
  );
}


Widget _buttonCheckOut(context) {
  return Container(
   margin: const EdgeInsets.only(top: 10),
    width: double.infinity,
    height: 40.0,
    child: Row(
      children: [
        ElevatedButton(
          onPressed: () {
            //Navigator.pushNamed(context,'login');
          },
          child:Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                        Container(),

              Container(
                margin: EdgeInsets.only(left: 50),
              child: headerText(
              texto: 'Continue', color: Colors.white, fontSize: 16.0),
              ),
              Container(
                margin: EdgeInsets.only(left: 50),
              child: headerText(
              texto: '71\$', color: Colors.white, fontSize: 15.0),
              )
              
            ],
          ),
          style: ElevatedButton.styleFrom(
            elevation: 0.5,
            primary: Colors.orange,
            shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),          ),
        )
      ],
    ),
  );
}
