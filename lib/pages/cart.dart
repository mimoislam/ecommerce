import 'package:app/constant.dart';
import 'package:flutter/material.dart';


class Cart extends StatefulWidget {
  static const  route="/cart";

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
double totalScores=0;
  List items=[
    {
      'id':1,
      "imageUrl": "assets/images/products/women_shoes.png",
      "name": "Ankle Boots",
      "price": 49.99,
      "full_name":"Faux Sued Ankle Boots",
      "size":"7",
      "color":"Hot Pink"
    },
    {
      'id':1,
      "imageUrl": "assets/images/products/backpack.png",
      "name": "Ankle Boots",
      "price": 20.58,
      "full_name":"Bottle Green Backpack",
      "size":"Medium",
      "color":"Green"
    },
    {
      'id':1,
      "imageUrl": "assets/images/products/scarf.png",
      "name": "Red Cotton Scarf",
      "price": 11.00,
      "full_name":"Red Cotton Scarf",
      "size":"2ft",
      "color":"Dark Red"
    },
    {
      'id':1,
      "imageUrl": "assets/images/products/women_shoes.png",
      "name": "Ankle Boots",
      "price": 49.99,
      "full_name":"Faux Sued Ankle Boots",
      "size":"7",
      "color":"Hot Pink"
    },
    {
      'id':1,
      "imageUrl": "assets/images/products/backpack.png",
      "name": "Ankle Boots",
      "price": 20.58,
      "full_name":"Bottle Green Backpack",
      "size":"Medium",
      "color":"Green"
    },
    {
      'id':1,
      "imageUrl": "assets/images/products/scarf.png",
      "name": "Red Cotton Scarf",
      "price": 11.00,
      "full_name":"Red Cotton Scarf",
      "size":"2ft",
      "color":"Dark Red"
    },
  ];
  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    final height=MediaQuery.of(context).size.height;
    final scale =mockupWidth/width;
    final textScale =width/mockupWidth;
    final paddingTop=MediaQuery.of(context).padding.top;
    final paddingBottom=MediaQuery.of(context).padding.bottom;
    totalScores=0;
    items.forEach((e) {
     totalScores+= e["price"];
    });
    return Scaffold(
      backgroundColor: Color(0xffF5F6F8),
      body: Container(
        padding: EdgeInsets.only(left: 10/mockupWidth*width,right:  10/mockupWidth*width,top: (59+paddingTop)/mockupWidth*width,bottom: paddingBottom),
        child:Stack(
          children: [
            Column(
              children: [
                SizedBox(height: 24.6/mockupHeight*height,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back_ios,size: 25*scale,color: colorRed,)),

                    Text("Cart",style: title,textScaleFactor: textScale,),
                    SizedBox(width: 25*scale,),

                  ],
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      var item=items[index];
                      return Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            Container(
                              width:100/mockupWidth*width ,height: 100/mockupWidth*width,
                              padding: EdgeInsets.all(20/mockupWidth*width),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.white,
                                boxShadow: const[
                                   BoxShadow(color: Color(0xffE7EAF0),offset: Offset(0,8),blurRadius: 8)
                                ]
                              ),
                              child: Container(
                             width:65/mockupWidth*width,
                             height: 59/mockupWidth*width,

                             decoration: BoxDecoration(
                                 image: DecorationImage(
                                     image: AssetImage(
                                         item["imageUrl"]
                                     ),
                                     scale: scale,
                                     fit: BoxFit.fill
                                 )
                             ),
                           ),
                            ),
                            SizedBox(width: 20/mockupWidth*width,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item["full_name"],style: textFieldTyped,textScaleFactor: textScale,
                                ),
                                Text(
                                  item["size"].toString()+", "+item["color"],style: const TextStyle(
                                    fontFamily: "NeusaNextStd",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xff515C6F)
                                ),textScaleFactor: textScale,
                                ),
                                Text(
                                  item["price"].toString()+" \$",style: const TextStyle(
                                    fontFamily: "NeusaNextStd",
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: colorRed
                                ),textScaleFactor: textScale,
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    },),
                ),
                Container(
                  child: Column(
                    children: [
                      const  Divider(height: 1,color: Colors.black,),
                      SizedBox(height: 10/mockupWidth*width,),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Text("TOTAL",style: TextStyle(
                                    fontFamily: "NeusaNextStd",
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff515C6F).withOpacity(0.5)
                                ),textScaleFactor: textScale,),
                                Text(totalScores.toStringAsFixed(2).toString()+" \$",style: const TextStyle(
                                    fontFamily: "NeusaNextStd",
                                    fontSize: 20,
                                    fontWeight: FontWeight.w900,
                                    color: colorRed
                                ),
                                  textScaleFactor: textScale,),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 7),
                              decoration: BoxDecoration(
                                  color: colorRed,
                                  borderRadius: BorderRadius.circular(40/mockupWidth*width),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color(0xffFF6969).withOpacity(0.15),
                                        offset: Offset(0,5),
                                        blurRadius: 10
                                    )
                                  ]
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("PLACE ORDER",style: const TextStyle(
                                      fontFamily: "NeusaNextStd",
                                      fontSize: 12,
                                      fontWeight: FontWeight.w900,
                                      color: colorWhite
                                  ),
                                    textScaleFactor: textScale,),
                                  Container(
                                      padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                                      decoration: BoxDecoration(
                                          color: colorWhite,
                                          borderRadius: BorderRadius.circular(50)
                                      ),
                                      child: Center(child: Icon(Icons.arrow_forward_ios,color: colorRed,size: 25*scale,))),
                                ],
                              ),
                            ),
                          ),

                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),

          ],
        ) ,
      ),
    );
  }
}
