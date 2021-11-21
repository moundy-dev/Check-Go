import 'boissons.dart';
import 'fleur.dart';
import 'frais.dart';
import 'fruitETlegume.dart';
import 'vetements.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'biscuitPage.dart';
import 'bonbon.dart';
import 'course_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Course 3D',
      home: HomePage(),
    );
  }
} //fin class MyApp

//création de l'architecture de la page d'accueil
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        //corps de la page
        child: Column(
          children: [
            HeaderSection(),
            ListSection(),
          ],
        ),
      ),
      //bottomNavigationBar: BottomSection(),
    );
  }
} //fin class home page

//class MyAppBar
class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => new Size.fromHeight(60);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          color: Colors.white,
          size: 25,
        ),
        onPressed: null,
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.more_vert,
            color: Colors.white,
            size: 25,
          ),
          onPressed: null,
        ),
      ],
      backgroundColor: Colors.white.withOpacity(0),
    );
  }
} //fin class MyAppBar

//class de HeaderSection
class HeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 540,
      decoration: BoxDecoration(
        color: Colors.red,
        /*image: DecorationImage(
          image: AssetImage('image/hello.png'),
          fit: BoxFit.cover,
        ),*/
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 20,
            bottom: 30,
            child: Text(
              'PRET?',
              style: GoogleFonts.arizonia(
                color: Colors.white,
                fontSize: 43,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          Positioned(
            right: 0,
            bottom: 20,
            child: MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainPage(
                      title: 'CHECK & GO !!',
                    ),
                  ),
                );
              },
              color: Colors.blue,
              shape: CircleBorder(),
              child: Padding(
                padding: EdgeInsets.all(17),
                child: Icon(
                  Icons.play_arrow_rounded,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
} //fin class headerlist

//class ListSection
class ListSection extends StatelessWidget {
  final List supermarche = [
    {
      'title': 'AUCHAN',
    },
    {
      'title': 'CARREFOUR',
    },
    {
      'title': 'LEADER PRICE',
    },
    {
      'title': 'MONOPRIX',
    },
    {
      'title': 'FRANPRIX',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(30, 40, 20, 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Choix de supermarché',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                child: Text(
                  'Voir tout',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.blue,
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 20),
          Column(
            children: supermarche.map((nom) {
              return Container(
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      nom['title'],
                      style: TextStyle(
                        //color: song['played'] ? Colors.blue : Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Row(
                      children: [
                        MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              //appel de page
                              MaterialPageRoute(
                                builder: (context) => MainPage(
                                  title: 'CHECK & GO !!',
                                ),
                              ),
                            );
                          },
                          color: Colors.red,
                          shape: CircleBorder(),
                          child: Padding(
                            padding: EdgeInsets.all(17),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        Icon(
                          Icons.more_vert,
                          //color: song['played'] ? Colors.blue : Colors.grey,
                        )
                      ],
                    )
                  ],
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}//fin class list
