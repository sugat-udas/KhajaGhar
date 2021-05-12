import 'package:flutter/material.dart';

class ReadyToDeliverTableController extends ChangeNotifier {
  List tableHead = [
    "Items",
    "Quantity",
    "Total",
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
}
