import 'package:flutter/material.dart';
import 'package:left/src/Features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:left/src/Features/presentation/commons_widgets/BackButtom/back_buttom.dart';
import 'package:left/src/Features/presentation/commons_widgets/Cards/favourites_card.dart';

class CollectionDetailPage extends StatelessWidget {
  const CollectionDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 230,
            backgroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Image(
                    width: double.infinity,
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://media.istockphoto.com/id/1355834373/es/foto/muslos-de-pollo-marinados-y-cocidos-en-salsa-de-adobo-plato-nacional-filipino.jpg?s=1024x1024&w=is&k=20&c=LEHFu8_kiZLxB7DQbyM5TX0Lz755ZRVBjkmi4RR0r1k='),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(0, 0, 0, 1.3),
                        borderRadius: BorderRadius.circular(10.0)),
                    width: double.infinity,
                    height: double.infinity,
                  ),
                  Center(
                    child: headerText(
                        texto: 'Asia \n Restaurant',
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        textAlign: TextAlign.center),
                  )
                ],
              ),
            ),
            leading: Builder(
              builder: (BuildContext context){
                return backButtom(context,Colors.white);
              }),
          ),

          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child:Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        margin: const EdgeInsets.symmetric(vertical: 20.0),
                        child: headerText(
                        texto: '128 places',
                        color: Color.fromRGBO(51, 58, 77, 1.0),
                        fontWeight: FontWeight.w600,
                        fontSize: 17.0
                        ),
                      ),

                      Column(
                        children: [
                         favouritesCard(
                  context: context,
                  image: NetworkImage(
                    "https://images.unsplash.com/photo-1522992319-0365e5f11656?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                  ),
                  title: "Expreso Left",
                  subTitle: "Club Italo PB 6",
                  review: "4.8",
                  rating: "(233 rating)",
                  buttonText: "Delivery",
                  hasButton: true,
                  isFavourite:true,
                  ),  
                  SizedBox(height: 15.0),
                     favouritesCard(
                  context: context,
                  image: NetworkImage(
                    "https://images.unsplash.com/photo-1522992319-0365e5f11656?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                  ),
                  title: "Expreso Left",
                  subTitle: "Club Italo PB 6",
                  review: "4.8",
                  rating: "(233 rating)",
                  buttonText: "Delivery",
                  hasButton: true,
                  isFavourite:false,
                  ),  
                        ],
                      ),
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
