import 'package:app/constant.dart';
import 'package:app/model/product.dart';
import 'package:app/proividers/order.dart';
import 'package:app/proividers/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OrderProducts extends StatefulWidget {
  static const route='/orderProducts';

  OrderProducts({Key? key}) : super(key: key);
  @override
  _OrderProductsState createState() => _OrderProductsState();
}

class _OrderProductsState extends State<OrderProducts> {
  double totalScores=0;
  late List<Product> items;
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
    final authProvider=Provider.of<UserProvider>(context);
    final orderProvider=Provider.of<OrderProvider>(context);
    items=id!["products"];
    for (var e in items) {
      totalScores+= e.price;
    }
    return Scaffold(
      backgroundColor: Color(0xffF5F6F8),
      body:Container(
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

                        Text("Order Products",style: title,textScaleFactor: textScale,),
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
                                                item.imageUrl
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
                                      item.full_name,style: textFieldTyped,textScaleFactor: textScale,
                                    ),

                                    Text(
                                      item.price.toString()+" \$",style: const TextStyle(
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
                  ],
                ),

              ],
            ) ,
          ));

  }

  gerCart(UserProvider authProvider)async {
    return authProvider.getCart();
  }
}
