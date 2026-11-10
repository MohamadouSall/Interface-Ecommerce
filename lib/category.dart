import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int currentSelectedItem = 0;
  @override
  Widget build(BuildContext context) {
    int items = 10;
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.only(top: 20),
        height: 110,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items,
          itemBuilder: (BuildContext context, int index) {
            return Stack(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      margin: EdgeInsets.only(left: index == 0 ? 20 :0,right: 20),
                      child: GestureDetector(
                        onTap: (){
                            setState(() {
                              currentSelectedItem = index;
                            });
                        },
                        child: Card(
                          color: currentSelectedItem == index ? Colors.black87:Colors.white,
                          child: Icon(
                            Icons.fastfood,
                            color: currentSelectedItem == index ? Colors.white:Colors.black87,
                          ),
                        ),
                      ),
                    ),
                    
                    Positioned(
                      bottom: 0,
                      child: Container(
                        width: 80,
                        margin: EdgeInsets.only(left: index == 0 ? 20 :0 , right: 20),
                        child: Row(
                          children: [
                            Spacer(),
                            Text("Chemise",style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold
                              ),),
                            Spacer()
                            ],
                        ),
                    ))
                  ],
            );
          },
        ),
      ),
    );
  }
}