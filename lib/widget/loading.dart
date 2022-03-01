import 'package:app/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    final scale =mockupWidth/width;
    return Center(
      child: Container(
          color: Colors.white,
          child:
           SpinKitCircle(
            color: colorRed,
            size: 50*scale,
          )
      ),
    );
  }
}