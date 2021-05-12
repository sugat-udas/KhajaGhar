import 'package:flutter/material.dart';

class NewOrdersController extends ChangeNotifier {
  List newOrdersHeadList = [
    "",
    "Items",
    "Quantity",
    "Unit Price",
    "Offer Price",
    "Total",
    "Actions",
  ];

  List newOrdersTableInfoList = [
    [
      "French Fries",
      ["French Fries"],
      2,
      129,
      "-",
      "Rs.258",
    ],
    [
      "Chicken Mo:MO",
      ["Chicken Mo:MO", "+Mo:Mo(4piece)", "+Chutni"],
      10,
      129,
      "-",
      "Rs.1290",
    ],
    [
      "Black Forest",
      ["Black Forest"],
      4,
      129,
      "-",
      "Rs.516",
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
}
