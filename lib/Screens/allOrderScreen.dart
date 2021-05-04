import 'package:flutter/material.dart';
import 'package:khaja_ghar/ScreenController/orderController.dart';
import 'package:provider/provider.dart';

class AllOrderScreen extends StatefulWidget {
  @override
  _AllOrderScreenState createState() => _AllOrderScreenState();
}

class _AllOrderScreenState extends State<AllOrderScreen> {
  OrderController _orderController;

  @override
  Widget build(BuildContext context) {
    _orderController = Provider.of<OrderController>(context);
    return _orderController.orderScreens[_orderController.currentOrderIndex];
  }
}
