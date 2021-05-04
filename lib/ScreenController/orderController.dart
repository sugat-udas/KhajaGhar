import 'package:flutter/material.dart';
import 'package:khaja_ghar/Screens/OrderScreen.dart';
import 'package:khaja_ghar/ordersScreen/completed.dart';
import 'package:khaja_ghar/ordersScreen/cooking.dart';
import 'package:khaja_ghar/ordersScreen/delivering.dart';
import 'package:khaja_ghar/ordersScreen/newOrder.dart';
import 'package:khaja_ghar/ordersScreen/readyToDeliver.dart';

class OrderController extends ChangeNotifier {
  int _currentOrderIndex = 5;
  bool addOrderFlag = false;

  List orderScreens = [
    NewOrder(),
    Cooking(),
    ReadyToDeliver(),
    Delivering(),
    Completed(),
    OrderScreen()
  ];

  onEachOrderMenuClick(int index) {
    _currentOrderIndex = index;
    notifyListeners();
  }

  // ignore: unnecessary_getters_setters
  int get currentOrderIndex => _currentOrderIndex;

  // ignore: unnecessary_getters_setters
  set currentOrderIndex(int value) => _currentOrderIndex = value;

  bool tickState = false;

  List get getOrderScreens => orderScreens;

  set setOrderScreens(List orderScreens) => this.orderScreens = orderScreens;

  changeTickState() {
    tickState = !tickState;
    notifyListeners();
  }
}
