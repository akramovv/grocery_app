import 'package:flutter/material.dart';
class WaterModel extends ChangeNotifier{
  final List _itemshops=[
    //[itemName,itemPrice,imagePath,color]
    ["Water","1.00","assets/images/water.jpg",Colors.green],
    ["Coke","2.50","assets/images/coke.jpg",Colors.yellow],
    ["Fanta","12.80","assets/fanta/image3.jpg",Colors.grey],
    ["Juice","1.00","assets/images/apple.jpg",Colors.red],
  ];
  get itemshops=>_itemshops;
}

