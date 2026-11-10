
import 'package:flutter/material.dart';

class Listproduit extends StatefulWidget {
  final int row;
  const Listproduit({super.key, required this.row});

  @override
  State<Listproduit> createState() => _ListproduitState();
}

class _ListproduitState extends State<Listproduit> {
  @override
  Widget build(BuildContext context) {
    Widget Airmax1 = Container(
      height: 160,
      child: Image.asset("assets/images/air1.png"),
    ); 
    Widget Airmax2 = Container(
      height: 160,
      child: Image.asset("assets/images/air2.png"),
    );
    int items = 10;
   
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.only(top: 10),
        height: widget.row == 2 ? 340 :  240,
        child: ListView.builder(
          itemCount: items,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index) {
            bool reserve = widget.row == 2 ? index.isEven :index.isOdd;
            return Stack(
                  
          children: [
            Container(
              margin: EdgeInsets.only(left: index == 0 ? 20 : 0 ,right: 20),
              height: 200,
              width: 200,
              child: GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, "/produit");
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.only(
                      topLeft: Radius.circular(45),
                      bottomLeft: Radius.circular(30),
                      topRight: Radius.circular(45)
                    )
                  ),
                  color: Colors.blueAccent,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                              reserve ?  "AirMax Bleu" : "AirMax Grix"
                        ,style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          ),),
                        Spacer(),
                        Row(
                          children: [
                            Spacer(),
                            Text(
                              "500 MR" ,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            Spacer(),
                            Spacer(),
                            Spacer(),
                            Container(
                              height: 50,
                              width: 50,
                              child: Card(
                                child: Icon(Icons.add),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
                Positioned(
                  top: reserve ? 25 : 25,
                  child: GestureDetector(

                    child: reserve ? Airmax2:Airmax1,
                  )
                  )
          
          ],
                  );
          }),
      ),
    );
  }
}