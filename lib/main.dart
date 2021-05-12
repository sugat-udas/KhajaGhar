import 'package:flutter/material.dart';
import 'package:khaja_ghar/ScreenController/HomeScreenController.dart';
import 'package:khaja_ghar/ScreenController/cookingCRUDController.dart';
import 'package:khaja_ghar/ScreenController/cookingScreenController.dart';
import 'package:khaja_ghar/ScreenController/newOrdersController.dart';
import 'package:khaja_ghar/ScreenController/orderController.dart';
import 'package:khaja_ghar/Screens/EmployeeScreen/employeeScreenController.dart';
import 'package:khaja_ghar/ordersScreen/AlertReadyTodeliver/readyToDeliverTableController.dart';
import 'package:provider/provider.dart';

import 'HomePage.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CookingScreenController(),
        ),
        ChangeNotifierProvider(
          create: (_) => HomeScreenController(),
        ),
        ChangeNotifierProvider(
          create: (_) => OrderController(),
        ),
        ChangeNotifierProvider(
          create: (_) => CookingCRUDController(),
        ),
        ChangeNotifierProvider(
          create: (_) => NewOrdersController(),
        ),
        ChangeNotifierProvider(
          create: (_) => ReadyToDeliverTableController(),
        ),
        ChangeNotifierProvider(
          create: (_) => EmployeeScreenController(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Khaja Ghar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
