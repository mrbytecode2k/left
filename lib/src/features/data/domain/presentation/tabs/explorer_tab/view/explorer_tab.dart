import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:left/src/features/data/domain/presentation/widgets/colors.dart';
import 'package:left/src/features/data/domain/presentation/widgets/header_text.dart';
import 'package:left/src/features/data/domain/presentation/widgets/header_double.dart';
import 'package:left/src/features/data/domain/presentation/widgets/populares_card.dart';

class ExplorerTabs extends StatelessWidget {
  //const ExplorerTabs(Key key) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CustomScrollView(slivers: [
      SliverList(
          delegate: SliverChildListDelegate([
        _topBar(context),
        Container(
          margin: EdgeInsets.symmetric(vertical: 20.0),
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Descubre nuestros postres',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 26.0),
                ),
              ),
              _sliderCards(),
              _headers(context, "Populares de la Semana", "Ver mas"),
              popularesCard(
                  context: context,
                  image: NetworkImage(
                    "https://images.unsplash.com/photo-1522992319-0365e5f11656?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                  ),
                  title: "Expreso Left",
                  subTitle: "Club Italo PB 6",
                  review: "4.8",
                  rating: "(233 rating)",
                  buttonText: "Delivery",
                  hasButton: true),

                  popularesCard(
                  context: context,
                  image: NetworkImage(
                    "https://images.unsplash.com/photo-1571115177098-24ec42ed204d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"
                  ),
                  title: "Cake Left",
                  subTitle: "Club Italo PB 6",
                  review: "4.8",
                  rating: "(233 rating)",
                  buttonText: "Delivery",
                  hasButton: true),

                  popularesCard(
                  context: context,
                  image: NetworkImage(
                  "https://images.unsplash.com/photo-1513104890138-7c749659a591?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
                  title: "Pizza Left",
                  subTitle: "Club Italo PB 6",
                  review: "4.8",
                  rating: "(233 rating)",
                  buttonText: "Delivery",
                  hasButton: true),
              // _populares(context,
              //     "https://images.unsplash.com/photo-1522992319-0365e5f11656?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
              // _populares(context,
              //     "https://images.unsplash.com/photo-1571115177098-24ec42ed204d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
              // _populares(context,
              //     "https://images.unsplash.com/photo-1513104890138-7c749659a591?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
              SizedBox(
                height: 10.0,
              ),
              _headers(context, "Colecciones", "Ver mas"),
              _sliderCollecction(context),
            ],
          ),
        )
      ]))
    ]));
  }
}

Widget _topBar(BuildContext context) {
  return Container(
    padding: const EdgeInsets.only(top: 15.0),
    child: Row(
      children: [
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, "searchpage"),
          child: Container(
            padding: const EdgeInsets.all(10.0),
            width: 310.0,
            margin: const EdgeInsets.only(left: 16.0),
            decoration: BoxDecoration(
              border: Border.all(color: Color.fromRGBO(234, 236, 239, 1.0)),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  size: 20.0,
                  color: gris,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    "Search",
                    style: TextStyle(
                      color: gris,
                      fontSize: 17.0,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
            width: 45.0,
            height: 45.0,
            margin: EdgeInsets.only(left: 25),
            decoration: BoxDecoration(
              color: Color.fromRGBO(209, 209, 214, 1.0),
              borderRadius: BorderRadius.circular(30),
             
            ),
            
            
            child: IconButton(
              
              icon: Icon(Icons.filter_list, size: 30, color: Colors.white),
              onPressed: () {
               Navigator.pushNamed(context, 'filter');
              },
            ))
      ],
    ),
  );
}

Widget _sliderCards() {
  return Container(
    height: 350,
    child: Swiper(
        itemCount: 4,
        layout: SwiperLayout.DEFAULT,
        itemBuilder: (BuildContext context, int index) {
          return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return _tarjeta(context);
              });
        }),
  );
}

Widget _tarjeta(BuildContext context) {
  return Container(
    padding: const EdgeInsets.all(10),
    child: Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image(
            width: 200.0,
            height: 250.0,
            image: NetworkImage(
                "https://images.unsplash.com/photo-1565958011703-44f9829ba187?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=465&q=80"),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                "Andy & Almuerzos",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Calle Solano 3",
                style: TextStyle(
                    color: Theme.of(context).disabledColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 13.0),
              ),
            ),
            Row(
              children: [
                Icon(Icons.star_rate, color: amarillo, size: 16),
                Text("4.8",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 13.0)),
                Text("(233 ratings)",
                    style: TextStyle(
                        color: gris,
                        fontWeight: FontWeight.w500,
                        fontSize: 13.0)),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  width: 80.0,
                  height: 18.0,
                  child: ElevatedButton(
                    onPressed: () {
                      //Navigator.pushNamed(context,'login');
                    },
                    child: Text("Deivery",
                        style: TextStyle(color: Colors.white, fontSize: 11.0)),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orangeAccent,
                      shape: StadiumBorder(),
                    ),
                  ),
                )
              ],
            )
          ],
        )
      ],
    ),
  );
}

Widget _headers(BuildContext context, String textHeader, String textAction) {
  return Row(
    children: [
      Container(
          alignment: Alignment.centerLeft,
          child: headerText(
              texto: textHeader,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20.0)),
      const Spacer(),
      GestureDetector(
        child: Row(
          children: [
            Text(textAction,
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w500)),
          ],
        ),
      ),
      Icon(Icons.play_arrow)
    ],
  );
}

Widget _populares(BuildContext context, String foto) {
  return Column(
    children: [
      Container(
        margin: const EdgeInsets.only(left: 10.0),
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image(
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                  image: NetworkImage(foto)),
            ),
            Container(
              padding: EdgeInsets.only(left: 15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 7.0),
                      child: headerText(
                          texto: "Expreso left",
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0)),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(bottom: 5.0),
                    child: Text(
                      "Club Italo L PB 6",
                      style: TextStyle(
                          color: gris,
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: amarillo, size: 16.0),
                      Text(
                        "4.5",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 5.0),
                        child: Text(
                          "230 Ratings",
                          style: TextStyle(
                              color: gris,
                              fontWeight: FontWeight.w500,
                              fontSize: 13.0),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 40.0),
                        width: 110.0,
                        height: 20.0,
                        child: ElevatedButton(
                          onPressed: () {
                            //Navigator.pushNamed(context,'login');
                          },
                          child: Text("delivery",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 11.0)),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.deepOrangeAccent,
                            shape: StadiumBorder(),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget _sliderCollecction(BuildContext context) {
  return Container(
    height: 200.0,
    child: Swiper(
        itemCount: 4,
        layout: SwiperLayout.DEFAULT,
        itemBuilder: (BuildContext context, int index) {
          return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return _tarjetaCollection(context);
              });
        }),
  );
}

Widget _tarjetaCollection(BuildContext context) {
  return Container(
    margin: const EdgeInsets.all(10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image(
            width: 300.0,
            height: 150.0,
            fit: BoxFit.cover,
            image: NetworkImage(
                "https://plus.unsplash.com/premium_photo-1668143358351-b20146dbcc02?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
          ),
        ),
      ],
    ),
  );
}
