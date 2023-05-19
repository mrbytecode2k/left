import 'package:flutter/material.dart';
import 'package:left/src/Colors/colors.dart';
import 'package:left/src/Features/presentation/commons_widgets/Headers/header_double.dart';
import 'package:left/src/Features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:left/src/Features/presentation/commons_widgets/Cards/vertical_card.dart';
import 'package:left/src/Features/presentation/commons_widgets/Cards/populares_card.dart';

class SearchPage extends StatelessWidget {
  //const SearchPage({Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
              backgroundColor: Colors.white,
              leading: IconButton(
                icon: Icon(Icons.close, color: Colors.black, size: 20.0),
                onPressed: () => Navigator.pop(context),
              )),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.only(top: 10.0),
                          child: headerText(
                              texto: "Buscar",
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0)),
                      _searchInput(context),
                      Container(
                        margin: const EdgeInsets.only(top: 15),
                        child: HeaderDouble(
                          textHeader: "Busqueda reciente",
                          textAction: "Limpiar todo",
                        ),
                      ),
                      //SizedBox(height: 20.0,),
                      _sliderResearch(),
                      SizedBox(height: 20),
                      HeaderDouble(
                          textHeader: 'Recomendado para ti', textAction: ''),
                          
                      popularesCard(
                          context: context,
                          image: NetworkImage(
                            "https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=699&q=80",
                          ),
                          title: "Colesterol Left",//aquiiiiiiiiiiiii teset
                          subTitle: "Club Italo PB 6",
                          review: "5.2",
                          rating: "(255 rating)",
                          buttonText: "Delivery",
                          hasButton: false),

                          popularesCard(
                          context: context,
                          image: NetworkImage(
                            "https://images.unsplash.com/photo-1594007654729-407eedc4be65?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=428&q=80",
                          ),
                          title: "Charcutera Left",
                          subTitle: "Club Italo PB 6",
                          review: "6.2",
                          rating: "(260 rating)",
                          buttonText: "Delivery",
                          hasButton: false),
                          popularesCard(
                          context: context,
                          image: NetworkImage(
                            "https://media.istockphoto.com/id/1481779974/es/foto/lasa%C3%B1a-con-pollo-desmenuzado-ma%C3%ADz-y-capas-de-queso.jpg?s=1024x1024&w=is&k=20&c=Js4KPyuR0Qhgj3VXlo5f7gyapyT3cDncp9qEmZyPRNk=",
                          ),
                          title: "Pasticho Left",
                          subTitle: "Club Italo PB 6",
                          review: "6.3",
                          rating: "(210 rating)",
                          buttonText: "Delivery",
                          hasButton: false),
                    ],
                  ))
            ]),
          )
        ],
      ),
    );
  }
}

Widget _searchInput(BuildContext context) {
  return Container(
      margin: const EdgeInsets.only(top: 10.0),
      height: 40.0,
      padding: const EdgeInsets.only(left: 5.0),
      decoration: BoxDecoration(
          color: Color.fromRGBO(142, 142, 147, 1.2),
          borderRadius: BorderRadius.circular(20.0)),
      child: TextFormField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 5.0),
          prefixIcon: Icon(Icons.search, color: gris),
          hintText: 'Buscar',
          border: OutlineInputBorder(borderSide: BorderSide.none),
        ),
      ));
}

Widget _sliderResearch() {
  return Container(
    height: 190,
    child: Swiper(
      itemCount: 4,
      layout: SwiperLayout.DEFAULT,
      itemBuilder: (BuildContext context, int index) {
        return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return cardVertical(
                  context: context,
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1579584425555-c3ce17fd4351?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1527&q=80"),
                  width: 180.0,
                  height: 120,
                  title: "LEFT Sushi cool",
                  subTitle: "40 piezas tempurizadas");
            });
      },
    ),
  );
}

Widget _card(BuildContext context) {
  return Container(
    margin: const EdgeInsets.all(10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image(
              width: 180.0,
              height: 120.0,
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1579584425555-c3ce17fd4351?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1527&q=80"),
            )),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: const EdgeInsets.only(top: 5.0),
                child: headerText(
                    texto: "Left & Sushi",
                    fontWeight: FontWeight.w500,
                    fontSize: 17.0)),
            Container(
                margin: const EdgeInsets.only(top: 2.0),
                child: headerText(
                    texto: "40 piezas tepurizado",
                    fontWeight: FontWeight.w400,
                    fontSize: 13.0,
                    color: gris)),
          ],
        ),
      ],
    ),
  );
}
