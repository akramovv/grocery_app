import 'package:flutter/material.dart';
class CartModel extends ChangeNotifier{
  final List _shopItems=[
    //[itemName,itemPrice,imagePath,color]
    ["Kivi","4.00","assets/images/image2.jpg",Colors.green],
    ["Banana","2.50","assets/images/image1.jpg",Colors.yellow],
  ["Strawberry","12.80","assets/images/image3.jpg",Colors.grey],
  ["Granat","1.00","assets/images/images4.jpg",Colors.red],
  ];
  List _cartItems=[];
  get shopItems=>_shopItems;
  get cartItems=>_cartItems;
  void addItemsToCart(int index){
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }
  void removeItemFromCart(int index){
    _cartItems.removeAt(index);
    notifyListeners();
  }
  String calculateTotal(){
    double totalPrice=0;
    for(int i=0;i<_cartItems.length;i++){
      totalPrice+= double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}