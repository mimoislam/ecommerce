import 'package:app/constant.dart';
import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  static const  route="/product";


  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  List items=[
    {
      'id':1,
      "imageUrl": "assets/images/products/boots.png",
      "name": "Ankle Boots",
      "price": 49.99,
      "full_name":"Faux Sued Ankle Boots"
    }
    ];
  var id;
  @override
  Widget build(BuildContext context) {
    id=ModalRoute.of(context)!.settings.arguments;
    final width=MediaQuery.of(context).size.width;
    final height=MediaQuery.of(context).size.height;
    final scale =mockupWidth/width;
    final textScale =width/mockupWidth;
    final paddingTop=MediaQuery.of(context).padding.top;
    final paddingBottom=MediaQuery.of(context).padding.bottom;
    var item=items[0];
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 26/mockupWidth*width,right:  26/mockupWidth*width,top: (59+paddingTop)/mockupWidth*width,bottom: paddingBottom),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(

                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.arrow_back_ios,size: 25*scale,color: colorRed,)),
                      Column(
                        children: [
                          Text(item["full_name"],style: itemDetailsText,textScaleFactor: textScale,),
                          Text(
                            item["price"].toString()+" \$",
                            overflow: TextOverflow.ellipsis,
                            textScaleFactor: textScale,
                            style: const TextStyle(
                                fontFamily: "NeusaNextStd",
                                fontSize: 12,
                                fontWeight: FontWeight.w900,
                                color: Color(0xff515C6F)
                            ),
                          )
                        ],
                      ),
                      SizedBox(width: 25*scale,),
                    ],
                  ),
                  Center(
                    child: Container(
                      width:220/mockupWidth*width ,height: 202/mockupHeight*height,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Product",style: textFieldTyped,textScaleFactor: textScale,),
                      Text("Details",style: textFieldTyped,textScaleFactor: textScale,),
                    ],
                  ),
                  Text("SELECT SIZE (US)",style: textFieldTitleLowOpacity,textScaleFactor: textScale,),
                  SizedBox(
                    height: 30/mockupWidth*width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        SizedBox(width: 36/mockupWidth*width,),
                        Text("4.5",style: textFieldTyped,textScaleFactor: textScale,),
                        SizedBox(width: 36/mockupWidth*width,),
                        Text("5.0",style: textFieldTyped,textScaleFactor: textScale,),
                        SizedBox(width: 36/mockupWidth*width,),
                        Text("6.5",style: textFieldTyped,textScaleFactor: textScale,),
                        SizedBox(width: 36/mockupWidth*width,),
                        Text("7.0",style: textFieldTyped,textScaleFactor: textScale,),
                        SizedBox(width: 36/mockupWidth*width,),
                        Text("8.0",style: textFieldTyped,textScaleFactor: textScale,),
                        SizedBox(width: 36/mockupWidth*width,),
                      ],
                    ),
                  ),
                  Text("SELECT COLOR",style: textFieldTitleLowOpacity,textScaleFactor: textScale,),
                  SizedBox(
                    height: 30/mockupWidth*width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        SizedBox(width: 36/mockupWidth*width,),
                        Text("4.5",style: textFieldTyped,textScaleFactor: textScale,),
                        SizedBox(width: 36/mockupWidth*width,),
                        Text("5.0",style: textFieldTyped,textScaleFactor: textScale,),
                        SizedBox(width: 36/mockupWidth*width,),
                        Text("6.5",style: textFieldTyped,textScaleFactor: textScale,),
                        SizedBox(width: 36/mockupWidth*width,),
                        Text("7.0",style: textFieldTyped,textScaleFactor: textScale,),
                        SizedBox(width: 36/mockupWidth*width,),
                        Text("8.0",style: textFieldTyped,textScaleFactor: textScale,),
                        SizedBox(width: 36/mockupWidth*width,),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 45/mockupWidth*width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: colorWhite,
                            borderRadius: BorderRadius.circular(40/mockupWidth*width),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0xff727C8E).withOpacity(0.15),
                                  offset: Offset(0,5),
                                  blurRadius: 10
                              )
                            ]
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 7),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("SHARE THIS",style: const TextStyle(
                                fontFamily: "NeusaNextStd",
                                fontSize: 12,
                                fontWeight: FontWeight.w900,
                              color: Color(0xff727C8E)
                            ),
                            textScaleFactor: textScale,),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                                decoration: BoxDecoration(
                                  color: Color(0xff727C8E),
                                  borderRadius: BorderRadius.circular(50)
                                ),
                                child: Center(child: Icon(Icons.arrow_upward_outlined,color: Colors.white,size: 25*scale,))),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20/mockupWidth*width,),
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
                            Text("ADD TO CART",style: const TextStyle(
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
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
