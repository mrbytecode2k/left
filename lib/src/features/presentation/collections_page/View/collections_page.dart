import 'package:flutter/material.dart';
import 'package:left/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:left/src/Colors/colors.dart';

class CollectionPage extends StatelessWidget {
  const CollectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white,
              title: headerText(texto: 'Colecciones', fontSize: 17),
              leading: Builder(builder: (BuildContext context) {
                return const BackButton(color: Colors.black);
              }),
            ),
            SliverPadding(
              padding:
                  const EdgeInsets.only(left: 30.0, right: 20.0, top: 10.0),
              sliver: SliverGrid.count(
                crossAxisCount: 2,
                mainAxisSpacing: 10.0,
                children: [
                  _card(context,NetworkImage(
                    'https://media.istockphoto.com/id/1219096510/es/foto/alitas-de-pollo-al-horno.jpg?s=1024x1024&w=is&k=20&c=vP8gj2MG-PYXAWMSQ9fLHmAHXAis8ATM_jvmd-ffdi0=')
),
                  _card(context,NetworkImage(
                    'https://media.istockphoto.com/id/836012728/es/foto/holiday-turqu%C3%ADa-la-cena.jpg?s=1024x1024&w=is&k=20&c=7-7uKEOecitRJjGOzMzB0VkTm31WgN2bMfmSNtbNwoE=')
),_card(context,NetworkImage(
                    'https://media.istockphoto.com/id/836012728/es/foto/holiday-turqu%C3%ADa-la-cena.jpg?s=1024x1024&w=is&k=20&c=7-7uKEOecitRJjGOzMzB0VkTm31WgN2bMfmSNtbNwoE=')
),
_card(context,NetworkImage(
                    'https://media.istockphoto.com/id/836012728/es/foto/holiday-turqu%C3%ADa-la-cena.jpg?s=1024x1024&w=is&k=20&c=7-7uKEOecitRJjGOzMzB0VkTm31WgN2bMfmSNtbNwoE=')
),
_card(context,NetworkImage(
                    'https://media.istockphoto.com/id/836012728/es/foto/holiday-turqu%C3%ADa-la-cena.jpg?s=1024x1024&w=is&k=20&c=7-7uKEOecitRJjGOzMzB0VkTm31WgN2bMfmSNtbNwoE=')
),
_card(context,NetworkImage(
                    'https://media.istockphoto.com/id/836012728/es/foto/holiday-turqu%C3%ADa-la-cena.jpg?s=1024x1024&w=is&k=20&c=7-7uKEOecitRJjGOzMzB0VkTm31WgN2bMfmSNtbNwoE=')
),
_card(context,NetworkImage(
                    'https://media.istockphoto.com/id/836012728/es/foto/holiday-turqu%C3%ADa-la-cena.jpg?s=1024x1024&w=is&k=20&c=7-7uKEOecitRJjGOzMzB0VkTm31WgN2bMfmSNtbNwoE=')
),
_card(context,NetworkImage(
                    'https://media.istockphoto.com/id/836012728/es/foto/holiday-turqu%C3%ADa-la-cena.jpg?s=1024x1024&w=is&k=20&c=7-7uKEOecitRJjGOzMzB0VkTm31WgN2bMfmSNtbNwoE=')
),
_card(context,NetworkImage(
                    'https://media.istockphoto.com/id/836012728/es/foto/holiday-turqu%C3%ADa-la-cena.jpg?s=1024x1024&w=is&k=20&c=7-7uKEOecitRJjGOzMzB0VkTm31WgN2bMfmSNtbNwoE=')
),


                  ],

                //childCount: collections.length
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _card(BuildContext context, ImageProvider<Object> image) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, 'collection-page');    },
    child: Stack(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image(
                width: 165.0,
                height: 190.0,
                fit: BoxFit.cover,
                image: image)),

        Container(
          width: 165,
          height: 190,
          decoration: BoxDecoration(
            color: Color.fromRGBO(0, 0, 0, 1.2),
          ),


        ),
       
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(right: 35.0, bottom: 20.0),
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              headerText(
                  texto: 'Asia',
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold),
              headerText(
                  texto: '128 Places',
                  color: Colors.white,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w300),
            ],
          ),
        )
      ],
    ),
  );
}
