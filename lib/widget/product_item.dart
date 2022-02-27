import 'package:app/constant.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatefulWidget {
  final String imageUrl,name;
  final double price ;
    const ProductItem({required this.imageUrl,required this.name,required this.price});
  @override
  _ProductItemState createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    final height=MediaQuery.of(context).size.height;
    final scale =mockupWidth/width;
    final textScale =width/mockupWidth;
    return Container(
      width:101/mockupWidth*width ,
      height: 150/mockupHeight*height,
      color: Colors.white,
      child: Column(
        children: [
          Container(
        width:75/mockupWidth*width ,height: 69/mockupHeight*height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    widget.imageUrl
                ),
              )
            ),
          ),
          Text(
            widget.name,
            overflow: TextOverflow.ellipsis,
            textScaleFactor: textScale,
            style: itemDetailsText,
          ),
          Text(
            widget.price.toString()+" \$",
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
    );
  }
}
