import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';

class EmployeeScreenController extends ChangeNotifier {
  bool addNewEmployeeFlag = false;
  File image;
  String aName;
  String aEmail;
  String aContact;
  Uint8List aImage;
  int index;
  Uint8List newImage;
  List editingItemList = [];

  bool editEmployeeFlag = false;

  changeEditFlag() {
    editEmployeeFlag = !editEmployeeFlag;
    notifyListeners();
  }

  List permissionList = [
    "View all reciepts",
    "Manage items",
    "Apply discounts",
    "Change Settings",
    "Modify tax",
    "Apply Discounts",
    "Refund"
  ];

  changeFlage() {
    addNewEmployeeFlag = !addNewEmployeeFlag;
    notifyListeners();
  }

  List tableHead = [
    "",
    "Name",
    "Email",
    "Contact no",
    "Password",
    "Department",
    "Actions"
  ];

  List employeeName = [
    [
      "assets/SujanShrestha.png",
      "Sujan Shrestha",
      "sujan12@gmail.com",
      "9827384928",
      "1234",
      "KDS,Client App",
    ],
    [
      "assets/KristinaThapa.png",
      "Kristina Thapa",
      "cristyt@gmail.com",
      "9827384928",
      "********",
      "KDS,Delivery App..",
    ],
    [
      "assets/BhagyshreeThapa.png",
      "Bhagyashree Thapa",
      "Vagyasreeee@gmail.com",
      "9827384928",
      "*******",
      "Admin, KDS, POS",
    ],
    [
      "assets/ChelsiKhetan.png",
      "Chelsi Khetan",
      "Khetanchelsi294@gmail.com",
      "9827384928",
      "847c",
      "Delivery App",
    ],
    [
      "assets/AnilAcharya.png",
      "Anil Acharya",
      "acharyaanil29@gmail.com",
      "9827384928",
      "*****",
      "KDS",
    ],
    [
      "assets/SusmitaShrestha.png",
      "Susmita Shrestha",
      "sustherah@gmail.com",
      "9827384928",
      "928s",
      "POS,KDS,Client App",
    ],
    [
      "assets/HariSapkota.png",
      "Hari Sapkota",
      "haryy839@gmail.com",
      "9827384928",
      "*****",
      "KDS,POS",
    ]
  ];

  List get getEmployeeDescription => employeeName;
  set setEmployeeDescription(List employeeDescription) =>
      this.employeeName = employeeName;

  List _itemName;

  List get itemName => _itemName;
  set itemName(List value) => _itemName = value;
  setName(List val) {
    itemName = val;
    notifyListeners();
    print(itemName);
    // employeeName.insert(index, itemName);
    employeeName.add(itemName);
  }
}
