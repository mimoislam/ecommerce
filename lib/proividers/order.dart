import 'dart:math';
import 'package:app/const.dart';
import 'package:app/model/order.dart';
import 'package:app/model/product.dart';
import 'package:app/repositories/order.dart';
import 'package:flutter/material.dart';



class OrderProvider with ChangeNotifier {
  OrderServices orderServices=OrderServices();
  addOrder(
      List<Product> products
      ){
    return orderServices.add(products);
  }
  getOrder(String id){
    for(var element in orders){
      if(element.checkId(id)){
        return element;
      }
    }
  }
}