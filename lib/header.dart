import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SliverList(
      delegate: SliverChildListDelegate(
        [
           Stack(
             children:[ Column(
               children: [
                 Container(
                  
                           height: size.height/5,
                  decoration: BoxDecoration(
                     color: Colors.blueAccent,
                     borderRadius: BorderRadius.vertical(bottom: Radius.circular(50))
                  ),
                           child: Column(
                 children: [
                 SizedBox(height: 30),
                           Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        child: CircleAvatar(
                          radius: 30,
                          child: Image.asset("assets/images/med.JPEG"),
                        ) ,
                      ),
                      SizedBox(width: 10),
                     Column(
                      
                      children: [
                         Text(
                        "Mohamed Sall",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                          ),),
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.black87,
                              borderRadius: BorderRadius.circular(25)
                            ),
                          
                            child: Text(
                              "Mobile Dev",
                              style: TextStyle(
                                color: Colors.white
                              ),
                            ),
                          )
                      ],
                     ),
                     Spacer(),
                     Text(
                      "1000 MR",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                        ),
                     )
                 
                    ],
                  ),
                     
                      
                           ),  
                         ],
                       )
                      
                       ),
                        SizedBox(height: 20)
               ],
             ),
  
                  
                
                  Positioned(
                   bottom: 0,
                    child: Container(
                      width: size.width,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(45)
                        ),
                        margin: EdgeInsets.symmetric(horizontal: 50),
                        child: TextFormField(
                            decoration: InputDecoration(
                              labelText: "Que voulez vous achater",
                              suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.search)),
                              contentPadding: EdgeInsets.only(left: 20),
                              border: InputBorder.none,



                            ),
                        ),
                      ),

                    ))

           ])
        ]
      ));
  
  }
}