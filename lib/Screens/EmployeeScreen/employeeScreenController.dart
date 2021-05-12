import 'package:flutter/material.dart';

class EmployeeScreenController extends ChangeNotifier {
  bool addNewEmployeeFlag = false;
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

  // bool get getNewEmployeeFlag => addNewEmployeeFlag;
  //set setNewEmployeeFlag(bool addNewEmployeeFlag) => this.addNewEmployeeFlag;
  // set setItemHeadList(List itemHeadList) => this.itemHeadList;
}
