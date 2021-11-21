import 'package:flutter/material.dart';
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

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final String title = 'Card Example';

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: title,
    theme: ThemeData(primarySwatch: Colors.deepOrange),
    home: MainPage(title: title),
  );
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text(widget.title),
    ),
    body: ListView(
      padding: EdgeInsets.all(16),
      children: [
        buildFeculentCard(),
        buildDrinkCard(),
        buildClothesCard(),
        buildCerealeCard(),
      ],
    ),
  );

  Widget buildFeculentCard() => Card(
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
    child: Stack(
      alignment: Alignment.center,
      children: [
        Ink.image(
          image: NetworkImage(
              'https://sc04.alicdn.com/kf/H79c8bd3c39a545b8930790260d954c50J.jpg'),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                //appel de page
                MaterialPageRoute(
                  builder: (context) => Bonbon_Page(),
                ),
              );
            },
          ),
          height: 240,
          fit: BoxFit.cover,
        ),
        Text(
          '',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ],
    ),
  );

  Widget buildDrinkCard() => Card(
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
    child: Stack(
      alignment: Alignment.center,
      children: [
        Ink.image(
          image: NetworkImage(
            'https://halalfs.com/41-large_default/coca-cola-9-x-15-litre.jpg',
          ),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                //appel de page
                MaterialPageRoute(
                  builder: (context) => Boisson_Page(),
                ),
              );
            },
          ),
          height: 240,
          fit: BoxFit.cover,
        ),
        Text(
          '',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ],
    ),
  );

  Widget buildClothesCard() => Card(
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
    child: Stack(
      alignment: Alignment.center,
      children: [
        Ink.image(
          image: NetworkImage(
              'https://www.lagrandeboutique.net/pub/media/catalog/product/cache/f14c0dc557b211f9ce7230db4495a729/s/s/ss21-r13-40.jpg'),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                //appel de page
                MaterialPageRoute(
                  builder: (context) => Vetement_Page(),
                ),
              );
            },
          ),
          height: 240,
          fit: BoxFit.cover,
        ),
        Text(
          '',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ],
    ),
  );

  Widget buildCerealeCard() => Card(
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
    child: Stack(
      alignment: Alignment.center,
      children: [
        Ink.image(
          image: const NetworkImage(
            'https://m.media-amazon.com/images/I/814dVGGMnSL._AC_SL1500_.jpg',
          ),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                //appel de page
                MaterialPageRoute(
                  builder: (context) => Biscuit_Page(),
                ),
              );
            },
          ),
          height: 240,
          fit: BoxFit.cover,
        ),
        Text(
          '',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ],
    ),
  );
}
