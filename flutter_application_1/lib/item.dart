import 'package:flutter/material.dart';

class Item {
  String itemName;
  String itemDesc;
  String itemImage;
  int itemPrice;

  Item(
      {required this.itemName,
      required this.itemDesc,
      required this.itemImage,
      required this.itemPrice});
}

class ItemModel {
  static final item = [
    Item(
        itemName: 'iphone 7',
        itemDesc: 'this is iphone 7',
        itemImage: '',
        itemPrice: 999)
  ];
}
