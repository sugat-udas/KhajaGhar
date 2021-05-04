import 'package:flutter/material.dart';

class CookingCRUDController extends ChangeNotifier {
  List tableHead = [
    "Items",
    "Quantity",
    "Total",
    "Action",
  ];

  List tableInfoList = [
    [
      "Paneer Paratha",
      1,
      "Rs.120",
    ],
    [
      "Veg MoMo",
      2,
      "Rs.200",
    ],
    [
      "Alyu tikka",
      1,
      "Rs.80",
    ],
  ];

  int onClickMinusBtn(int index) {
    index--;
    return index;
  }

  int onClickPlusBtn(int index) {
    index++;
    return index;
  }

  int _itemQuantity;
  int get itemQuantity => tableInfoList[1];
  set itemQuantity(int value) {
    _itemQuantity = value;
    _itemQuantity--;
    setQuantity(int val) {
      tableInfoList[1] = val;
      notifyListeners();
      print(itemQuantity);
    }
  }
}
