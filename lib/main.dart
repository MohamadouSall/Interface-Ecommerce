import 'package:app/category.dart';
import 'package:app/header.dart';
import 'package:app/listProduit.dart';
import 'package:app/produit_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme:AppBarThemeData(
          backgroundColor: Colors.blueAccent,
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.blueAccent
        ),
        bottomAppBarTheme: BottomAppBarThemeData(
          color: Colors.blueAccent
        )
      ),
      debugShowCheckedModeBanner: false,
      home: Ecommerce(),
      routes: {
        "/produit" :(context)=>(ProduitPage())
      },
    );
  }
}

class Ecommerce extends StatefulWidget {
  const Ecommerce({super.key});

  @override
  State<Ecommerce> createState() => _EcomerceState();
}

class _EcomerceState extends State<Ecommerce> {
  @override
  Widget build(BuildContext context) {
    Color colorWhite = Colors.white;
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
        
        SliverAppBar(
          pinned: true,
          leading: IconButton(onPressed:(){}, icon: Icon(Icons.menu,color: colorWhite ,)),
          actions: [
            Icon(Icons.search,color: colorWhite,),
            IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart,color: colorWhite,)),
            
            ],
            title: Text(
              "SHOP",
              style: TextStyle(
                color: colorWhite
              ),
              ),
            centerTitle: true,
        ),
      Header(),
      Category(),
      Listproduit(row: 1),
      Listproduit(row: 2)
     
      ],
            

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50)
        ),
        onPressed: (){},
    child: Icon(
      Icons.home,
      color: colorWhite
      ),
      ),
      extendBody: true,
      bottomNavigationBar: BottomAppBar(
        shape:CircularNotchedRectangle(),
        child: Row(
          children: [
            Spacer(),
            Icon(Icons.add_alert,color: colorWhite,),
            Spacer(),
            Spacer(),
            Icon(Icons.favorite,color: colorWhite,),
            Spacer()

          ],
        ),
      ),
    );
  }
}