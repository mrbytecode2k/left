import 'package:flutter/material.dart';
import 'package:left/src/features/presentation/commons_widgets/Headers/header_double.dart';
import '../../../../Colors/colors.dart';
import 'package:left/src/features/presentation/commons_widgets/Headers/header_text.dart';

class PlaceDetailPage extends StatelessWidget {
  const PlaceDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: orange,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        label: headerText(
            texto: 'Añadir a la Cesta', color: Colors.white, fontSize: 15),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: orange,
            expandedHeight: 395,
            floating: true,
            pinned: false,
            snap: false,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Image(
                      width: double.infinity,
                      height: 350.0,
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1593424718424-cf4d83f3def1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80')),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, 1.1),
                    ),
                    width: double.infinity,
                    height: 350.0,
                  ),
                  Wrap(
                    children: [
                      _promoButtom(),
                      _infoPlace(),
                      _infoPlaceStats(),
                      _offerBar()
                    ],
                  )
                ],
              ),
            ),
            leading: Builder(builder: (BuildContext context) {
              return const BackButton(color: Colors.black);
            }),
            actions: [
              Container(
                  margin: EdgeInsets.all(10),
                  child: Image(
                    image: AssetImage('assets/images/share.png'),
                    width: 28,
                    height: 28,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.bookmark_border,
                      color: Colors.white, size: 30))
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                _headers(texto: 'Platos populares', textAction: ''),
                _sliderCards(),
                _headers(texto: 'Full Menu', textAction: ''),
                _menulist(context),
                _headers(texto: 'Reseñas'),
                _reviews(),
                _headers(texto: 'Tu Clasificación'),
                _yourRatings(),
                SizedBox(height: 150),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _promoButtom() {
  return Container(
    margin: const EdgeInsets.only(top: 121, left: 30.0, right: 15.0),
    width: double.infinity,
    height: 25.0,
    child: Row(
      children: [
        ElevatedButton(
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
      ],
    ),
  );
}

Widget _infoPlace() {
  return Column(
    children: [
      Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        margin: EdgeInsets.symmetric(vertical: 7.0),
        child: headerText(
            texto: 'Dialiara garfullina cream , Italian meat',
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25.0),
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Row(
          children: [
            Icon(Icons.location_on, color: gris),
            headerText(
                texto: 'Carrera 12 entre calle 8 y 9 ',
                color: bgGrey,
                fontWeight: FontWeight.w800,
                fontSize: 15.0),
          ],
        ),
      )
    ],
  );
}

Widget _infoPlaceStats() {
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0),
      margin: EdgeInsets.only(top: 32.0),
      height: 70.0,
      decoration: BoxDecoration(
          border: Border(
        top: BorderSide(color: Colors.white),
        bottom: BorderSide(color: Colors.white, style: BorderStyle.none),
      )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                Icon(Icons.star_rate, color: Colors.white, size: 19.0),
                headerText(
                    texto: '4.5',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0)
              ]),
              headerText(
                  texto: '351 Ratings',
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 15.0)
            ],
          ),
          Container(
            height: 40.0,
            decoration: BoxDecoration(
                border: Border(right: BorderSide(color: Colors.white))),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                Icon(Icons.bookmark, color: Colors.white, size: 19.0),
                headerText(
                    texto: '173k',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0)
              ]),
              headerText(
                  texto: 'Bookmark',
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 15.0)
            ],
          ),
          Container(
            height: 40.0,
            decoration: BoxDecoration(
                border: Border(right: BorderSide(color: Colors.white))),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                Icon(Icons.image, color: Colors.white, size: 19.0),
                headerText(
                    texto: '346',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0)
              ]),
              headerText(
                  texto: 'Photos',
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 15.0)
            ],
          ),
        ],
      ));
}

Widget _offerBar() {
  return Container(
    color: Color.fromRGBO(255, 237, 214, 1.0),
    padding: EdgeInsets.all(10),
    height: 90.0,
    child: Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            headerText(
                texto: '¡Nuevo! Prueba de recogida',
                color: orange,
                fontWeight: FontWeight.w500,
                fontSize: 13.0),
            headerText(
                texto:
                    'pickup on your time.  Your order is \n ready when you are',
                color: Colors.black,
                fontWeight: FontWeight.w300,
                fontSize: 13.0)
          ],
        ),
        Spacer(),
      
      
      
        Row(
          children: [
            //padding: const EdgeInsets.symmetric(horizontal: 10,vertical:10),
            ElevatedButton(
              onPressed: () {
                //Navigator.pushNamed(context,'login');
              },
              child: headerText(
                  texto: 'Ordenar ahora', color: Colors.white, fontSize: 12.0),
              style: ElevatedButton.styleFrom(
                elevation: 0.5,
                primary: Colors.orange,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
            ),
          ],
        )
      ],
    ),
  );
}

Widget _headers({texto: String, textAction: ''}) {
  return Container(
    margin: EdgeInsets.only(top: 10.0, bottom: 5.0),
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: HeaderDouble(textHeader: texto),
    ),
  );
}

Widget _sliderCards() {
  return Container(
      height: 220.0,
      padding: const EdgeInsets.only(left: 15.0),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext _, int index) {
            return _cards();
          }));
}

Widget _cards() {
  return Container(
    margin: EdgeInsets.all(5.0),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image(
              width: 200.0,
              height: 120.0,
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1488900128323-21503983a07e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'))),
      Container(
        margin: const EdgeInsets.only(top: 10, left: 5),
        child: headerText(
            texto: 'Pablo Merchán Montes',
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 15.0),
      ),
      Container(
        margin: const EdgeInsets.only(top: 5, left: 5),
        child: headerText(
            texto: '90.50 Bs.',
            color: Colors.grey,
            fontWeight: FontWeight.bold,
            fontSize: 15.0),
      ),
      Row(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10, left: 5.0),
            child: headerText(
                texto: 'Selecciona',
                color: orange,
                fontWeight: FontWeight.w500,
                fontSize: 15.0),
          ),
          Container(
              margin: const EdgeInsets.only(top: 10, left: 90),
              child: Image(
                  width: 20.0,
                  height: 20.0,
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/plus_order.png')))
        ],
      )
    ]),
  );
}

Widget _menulist(BuildContext context) {
  return Container(
    padding: const EdgeInsets.only(top: 5.0),
    child: Column(
      children: [
        _menuItem(context, 'Ensalada', '2'),
        _menuItem(context, 'Pollo', '5'),
        _menuItem(context, 'Sopa', '6'),
        _menuItem(context, 'Vegetales', '5'),
        _menuItem(context, 'Bebidas', '14'),
      ],
    ),
  );
}

Widget _menuItem(BuildContext context, String texto, String itemCount) {
  return Container(
    decoration: BoxDecoration(border: Border(bottom: BorderSide(color: gris))),
    child: Column(children: [
      ListTile(
        title: headerText(
            texto: texto, fontWeight: FontWeight.w300, fontSize: 17.0),
        trailing: headerText(
            texto: itemCount, fontWeight: FontWeight.w300, fontSize: 17.0),
      ),
      _sliderCards()
    ]),
  );
}

Widget _reviews() {
  return Container(
      height: 135.0,
      padding: EdgeInsets.only(left: 10),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return _cardReviews();
          }));
}

Widget _cardReviews() {
  var lorem =
      "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit";
  return Container(
    margin: EdgeInsets.only(top: 10),
    padding: EdgeInsets.only(left: 10, right: 10),
    width: 350,
    child: Column(
      children: [
        Row(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image(
                    width: 49.0,
                    height: 43.0,
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1488900128323-21503983a07e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'))),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  headerText(
                      texto: 'Mike Swithson',
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                  headerText(
                      texto: '45 Reviews',
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: gris)
                ],
              ),
            ),
            Spacer(),
            Container(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Container(
                    width: 60,
                    height: 30,
                    color: orange,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        headerText(
                            texto: '4',
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 12),
                        Icon(
                          Icons.star_rate,
                          color: Colors.white,
                          size: 14,
                        )
                      ],
                    ),
                  )),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: headerText(
              texto: lorem,
              color: gris,
              fontSize: 12,
              fontWeight: FontWeight.w400,
              textAlign: TextAlign.left),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: headerText(
              texto: 'ver reseñas completas',
              color: orange,
              fontSize: 12,
              fontWeight: FontWeight.w500,
              textAlign: TextAlign.left),
        )
      ],
    ),
  );
}

Widget _yourRatings() {
  return Container(
    margin: EdgeInsets.only(top: 10),
    padding: EdgeInsets.only(left: 10,right: 10),
    
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Container(
                    width: 60,
                    height: 30,
                    color: orange,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        headerText(
                            texto: '1',
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 12),
                        Icon(
                          Icons.star_rate,
                          color: Colors.white,
                          size: 14,
                        )
                      ],
                    ),
                  )),
            ),
          Container(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Container(
                    width: 60,
                    height: 30,
                    color: orangeWithHalfOpacity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        headerText(
                            texto: '2',
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 12),
                        Icon(
                          Icons.star_rate,
                          color: Colors.white,
                          size: 14,
                        )
                      ],
                    ),
                  )),
            ),
                        Container(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Container(
                    width: 60,
                    height: 30,
                    color: orange,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        headerText(
                            texto: '3',
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 12),
                        Icon(
                          Icons.star_rate,
                          color: Colors.white,
                          size: 14,
                        )
                      ],
                    ),
                  )),
            ),
                        Container(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Container(
                    width: 60,
                    height: 30,
                    color: orange,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        headerText(
                            texto: '4',
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 12),
                        Icon(
                          Icons.star_rate,
                          color: Colors.white,
                          size: 14,
                        )
                      ],
                    ),
                  )),
            ),
                        Container(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Container(
                    width: 60,
                    height: 30,
                    color: orangeWithHalfOpacity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        headerText(
                            texto: '5',
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 12),
                        Icon(
                          Icons.star_rate,
                          color: Colors.white,
                          size: 14,
                        )
                      ],
                    ),
                  )),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 10,left: 20),
          child: headerText(
              texto: 'Nos encantaría saber mas de tu experiencia',
              color: gris,
              fontSize: 12,
              fontWeight: FontWeight.w400,
              textAlign: TextAlign.left),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: headerText(
              texto: 'Modificar tu reseña',
              color: orange,
              fontSize: 12,
              fontWeight: FontWeight.w500,
              textAlign: TextAlign.left),
        )

      ],
    ),
  );
}
