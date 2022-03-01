import 'package:app/constant.dart';
import 'package:app/model/order.dart';
import 'package:app/model/product.dart';
import 'package:app/pages/order_products.dart';
import 'package:app/proividers/order.dart';
import 'package:app/proividers/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class OrderPage extends StatefulWidget {
  static const route="/orders";
  const OrderPage({Key? key}) : super(key: key);

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  List<Order>? items;

  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    final height=MediaQuery.of(context).size.height;
    final scale =mockupWidth/width;
    final textScale =width/mockupWidth;
    final paddingTop=MediaQuery.of(context).padding.top;
    final paddingBottom=MediaQuery.of(context).padding.bottom;
    final authProvider=Provider.of<UserProvider>(context);
    final orderProvider=Provider.of<OrderProvider>(context);
    return Scaffold(
      body: FutureBuilder(
        future: getOrder(authProvider,orderProvider),
        builder: (context, snapshot) {
          if((!snapshot.hasData)){
            return Center(child: Text('There is nothing u are Buying  Now',textScaleFactor: textScale,style: title,textAlign: TextAlign.center,));
          }
          items=snapshot.data as List<Order>?;
          if((items!.isEmpty)){
            return Center(child: Text('There is nothing u are Buying  Now',textScaleFactor: textScale,style: title,textAlign: TextAlign.center,));

          }
          return Container(
              padding: EdgeInsets.only(left: 10/mockupWidth*width,right:  10/mockupWidth*width,top: (59+paddingTop)/mockupWidth*width,bottom: paddingBottom),
              child:
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

                        Text("Orders",style: title,textScaleFactor: textScale,),
                        SizedBox(width: 25*scale,),

                      ],
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: items!.length,
                        itemBuilder: (context, index) {
                          var item=items![index];
                          return GestureDetector(
                            onTap: (){
                              Navigator.pushNamed(context, OrderProducts.route,
                                  arguments: {'products':item.products});
                            },
                            child: Container(
                              color: Colors.white,
                              margin: const EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                children: [
                                  SizedBox(width: 20/mockupWidth*width,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        item.id,style: textFieldTyped,textScaleFactor: textScale,
                                      ),

                                      Text(
                                        getTotal(item.products).toString()+" \$",style: const TextStyle(
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
                            ),
                          );
                        },),
                    ),

                  ]
              )
          );
        },
      ),
    );
  }
  getTotal(List<Product> products){
    double total=0;
    for (var product in products){
      total+=product.price;
    }
    return total;
  }
  getOrder(UserProvider authProvider, OrderProvider orderProvider)async{
    List <String>  ordersId=authProvider.getOrder();
    List<Order> orders=[];
    for (var id in ordersId){
     orders.add(orderProvider.getOrder(id)) ;
    }
    return orders;
  }
}
