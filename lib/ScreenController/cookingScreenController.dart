import 'package:flutter/material.dart';

class CookingScreenController extends ChangeNotifier {
  bool addOrderFlag = false;

  List itemHeadList = [
    "Invoice no",
    "Name",
    "Contact",
    "Total",
    "Payment",
    "Assigned To",
    "Date & Time"
  ];

  List itemInfoList = [
    [
      "#184859",
      "Kriti Gurung",
      "9853467389",
      "Rs.1243",
      "unpaid",
      "Hari Baral",
      "02:04 pm,21st Dec"
    ],
    [
      "#2423",
      "Sabnam Gurung",
      "987478482",
      "Rs.1243",
      "eSewa",
      "Rajesh Thapa",
      "02:04 pm,21st Dec"
    ],
    [
      "#2323",
      "Rita Thapa",
      "9827465628",
      "Rs.1243",
      "fonePay",
      "Kritika Baral",
      "02:04 pm,21st Dec"
    ],
    [
      "#2321",
      "Chelsi Khetan",
      "9837475898",
      "Rs.1243",
      "khalti",
      "Hari Baral",
      "02:04 pm,21st Dec"
    ],
    [
      "#4542",
      "Kriti Gurung",
      "98273616111",
      "Rs.1243",
      "unpaid",
      "Ritu Shrestha",
      "02:04 pm,21st Dec"
    ],
    [
      "#4321",
      "Kriti Gurung",
      "9876364321",
      "Rs.1243",
      "unpaid",
      "Hari Baral",
      "02:04 pm,21st Dec"
    ],
    [
      "#21321",
      "Kriti Gurung",
      "9886754214",
      "Rs.1243",
      "unpaid",
      "Hari Baral",
      "02:04 pm,21st Dec"
    ],
    [
      "#12453",
      "Kriti Gurung",
      "987696436",
      "Rs.1243",
      "credit",
      "Hari Baral",
      "02:04 pm,21st Dec"
    ],
    [
      "#2578",
      "Kriti Gurung",
      "9876743211",
      "Rs.1243",
      "unpaid",
      "Hari Baral",
      "02:04 pm,21st Dec"
    ],
    [
      "#74543",
      "Kriti Gurung",
      "9876543209",
      "Rs.1243",
      "credit",
      "Hari Baral",
      "02:04 pm,21st Dec"
    ],
  ];

  List get getItemHeadList => itemHeadList;
  set setItemHeadList(List itemHeadList) => this.itemHeadList;

  List get getItemInfoList => itemInfoList;
  set setItemInfoList(List itemInfoList) => this.itemInfoList;
}
