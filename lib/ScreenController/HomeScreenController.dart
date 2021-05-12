import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:khaja_ghar/Screens/AllProductScreen.dart';
import 'package:khaja_ghar/Screens/CreditDashboard.dart';
import 'package:khaja_ghar/Screens/CustomerScreen.dart';
import 'package:khaja_ghar/Screens/DashboardScreen.dart';
import 'package:khaja_ghar/Screens/EmployeeScreen.dart';
import 'package:khaja_ghar/Screens/SettingScreen.dart';
import 'package:khaja_ghar/Screens/allOrderScreen.dart';

class HomeScreenController extends ChangeNotifier {
  int _currentIndex = 1;

  int _currentProductIndex;

  int get currentProductIndex => _currentProductIndex;

  set currentProductIndex(int value) => _currentProductIndex = value;

  int get currentMenuItemIndex => _currentIndex;

  bool _productToggleFlag = false;
  bool get productTOggleFlag => _productToggleFlag;

  set productToggleFlag(bool value) => _productToggleFlag = value;

  List orderList = [
    "New Orders",
    "Cooking",
    "Ready to Deliver",
    "Delivering",
    "Completed"
  ];
  List get getOrderList => orderList;
  set setOrderList(List orderList) => this.orderList = orderList;

  int getOpacityForOrientation(context) {
    if (MediaQuery.of(context).orientation == Orientation.landscape) {
      return 0;
    } else {
      return 1;
    }
  }

  List _screens = [
    DashboardScreen(),
    AllOrderScreen(),
    AllProductScreen(),
    CustomerScreen(),
    Employees(),
    CreditDashboard(),
    SettingScreen(),
  ];

  List get screenList => _screens;

  set currentMenuItemIndex(int value) {
    _currentIndex = value;
  }

  void onProductToggle() {
    productToggleFlag = !productTOggleFlag;
    notifyListeners();
  }

  void onSelect(int index) {
    currentMenuItemIndex = index;
    notifyListeners();
  }

  void onSelectOrderMenu(int index) {
    currentMenuItemIndex = index;
    notifyListeners();
  }
}
