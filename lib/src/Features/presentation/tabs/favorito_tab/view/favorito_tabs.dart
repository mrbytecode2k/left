import 'package:flutter/material.dart';
import 'package:left/src/Colors/colors.dart';
import 'package:left/src/Features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:left/src/Features/presentation/commons_widgets/Cards/favourites_card.dart';

class FavoritoTabs extends StatelessWidget {
  const FavoritoTabs({Key? key}): super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgGrey,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: Text(''),
            backgroundColor: white,
            centerTitle: true,
            title: headerText(texto: 'Mis Favoritos',
            color:const ColorScheme.dark().onSecondary,
            fontSize: 17,
            fontWeight: FontWeight.bold),

          ),
          SliverList(
             delegate: SliverChildListDelegate(
              [
                Container(
                  margin: const EdgeInsets.only(top:20),
                  child: Padding(
                    
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        favouritesCard(
                    context: context,
                    image: NetworkImage(
                      "https://images.unsplash.com/photo-1522992319-0365e5f11656?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                    ),
                    title: "Expreso FIFO",
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
                    title: "Expreso FIFO",
                    subTitle: "Club Italo PB 6",
                    review: "4.8",
                    rating: "(233 rating)",
                    buttonText: "Delivery",
                    hasButton: true,
                    isFavourite:false,
                    ),
                      ],
                    ),
                
                
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