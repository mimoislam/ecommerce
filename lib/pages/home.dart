import 'package:app/const.dart';
import 'package:app/constant.dart';
import 'package:app/model/product.dart';
import 'package:app/pages/cart.dart';
import 'package:app/pages/product.dart' as page;
import 'package:app/widget/product_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const  route="/home";

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<List<Product>>getProducts()async {
  List<Product> list=[];
  for (var element in products) {
    if(element["quantity"]>0){
      list.add(element["product"]);
    }
  }return list;
  }
  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    final height=MediaQuery.of(context).size.height;
    final scale =mockupWidth/width;
    final textScale =width/mockupWidth;
    final paddingTop=MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 26/mockupWidth*width,top: (59+paddingTop)/mockupWidth*width),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 24.6/mockupHeight*height,),
                    Text("Categories",style: title,textScaleFactor: textScale,),
                    SizedBox(height:
                      5/mockupHeight*height,),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/icons/Apparel.png",scale: scale,),
                            SizedBox(height: 5.6/mockupHeight*height,),

                            Text("Apparel",style: textFieldTyped,textScaleFactor: textScale,)
                          ],
                        ),
                        SizedBox(width:21/mockupWidth*width ,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/icons/Beauty.png",scale: scale,),
                            SizedBox(height: 5.6/mockupHeight*height,),

                            Text("Beauty",style: textFieldTyped,textScaleFactor: textScale,)
                          ],
                        ),
                        SizedBox(width:21/mockupWidth*width ,),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/icons/Shoes.png",scale: scale,),
                            SizedBox(height: 5.6/mockupHeight*height,),

                            Text("Shoes",style: textFieldTyped,textScaleFactor: textScale,)
                          ],
                        ),
                        SizedBox(width:21/mockupWidth*width ,),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: 75*scale,
                                width: 75*scale,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(75/mockupWidth*width),
                                    color: colorWhite
                                ),
                                child: Center(child: Icon(Icons.arrow_forward_ios,size: 15/mockupHeight*height,color: colorRed,)))
                       ,     SizedBox(height: 5.6/mockupHeight*height,),

                            Text("See All",style: textFieldTyped,textScaleFactor: textScale,)
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 24.6/mockupHeight*height,),
                    Text("Latest",style: title,textScaleFactor: textScale,),
                    SizedBox(
                        height:200/mockupHeight*height,

                        child: ListView(
                          scrollDirection: Axis.horizontal,
                        children: [
                          SizedBox(
                              height:185/mockupHeight*height,
                              width: 325/mockupWidth*width,
                            child: Stack(
                              children: [
                                Container(
                                    height:185/mockupHeight*height,
                                    width: 325/mockupWidth*width,
                                    decoration:  BoxDecoration(
                                      borderRadius: BorderRadius.circular(10/mockupWidth*width),
                                        image: const DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                            "assets/images/Base.png"
                                        ),
                                      )
                                    ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 24/mockupHeight*height,horizontal: 25/mockupWidth*width),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width:130/mockupWidth*width ,
                                        child:  Text("For all Your Summer Clothing needs",
                                          style: const TextStyle(
                                            fontFamily: "NeusaNextStd",
                                            fontSize: 18,
                                            fontWeight: FontWeight.w300,
                                            color: Color(0xffFFFFFF)
                                        ),textScaleFactor: textScale,overflow: TextOverflow.fade,),
                                      ),
                                      SizedBox(
                                        height: 25/mockupHeight*height,
                                      ),
                                      Container(
                                        height: 40/mockupHeight*height,
                                        width:130/mockupWidth*width ,

                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(40/mockupHeight*height),
                                          color: colorWhite
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text("See More",
                                              style: const TextStyle(
                                                  fontFamily: "NeusaNextStd",
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w300,
                                                  color: colorBlue
                                              ),textScaleFactor: textScale),
                                            Image.asset("assets/images/arrowNextRed.png")
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(right:26/mockupWidth*width),
                      child: FutureBuilder(

                        future:getProducts(),
                        builder: (context, snapshot) {
                          if(!snapshot.hasData){
                            return Container();
                          }
                          else {
                            List<Product>? products = snapshot.data as List<Product>?;

                            return GridView.builder(
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                crossAxisSpacing: 10 / mockupWidth * width,
                                mainAxisSpacing: 20 / mockupHeight * height,
                                childAspectRatio: ((101 / mockupWidth * width) /
                                    (120 / mockupHeight * height)),
                              ),
                              itemBuilder: (context, index) {
                                var item = products![index];
                                return GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(context, page.Product.route,
                                          arguments: {'id': item.id});
                                    },
                                    child: ProductItem(
                                      imageUrl: item.imageUrl,
                                      name: item.name,
                                      price: item.price,
                                    ));
                              },
                              shrinkWrap: true,
                              itemCount: products!.length,
                              physics: const NeverScrollableScrollPhysics(),
                            );
                          }
                        },
                      ),
                    )

                  ],
                ),
              ),
            ),
            Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/icons/Homeicon.png',width: 30/mockupWidth*width,),
                      Text("Home",style:const  TextStyle(
                          fontFamily: "NeusaNextStd",
                          fontSize: 15,
                          color: colorRed
                      ),textScaleFactor: scale,),

                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/icons/finished.png',width: 30/mockupWidth*width,),
                      Text("Orders",style:const TextStyle(
                          fontFamily: "NeusaNextStd",
                          fontSize: 15,
                          color: Color(0xff515C6F)
                      ),textScaleFactor: scale,),

                    ],
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, Cart.route);
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/icons/Cart.png',width: 30/mockupWidth*width,),
                        Text("Cart",style: const TextStyle(
                            fontFamily: "NeusaNextStd",
                            fontSize: 15,
                            color: Color(0xff515C6F)
                        ),textScaleFactor: scale,),

                      ],
                    ),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
