import 'package:flutter/material.dart';
import 'package:khaja_ghar/ScreenController/HomeScreenController.dart';
import 'package:khaja_ghar/ScreenController/orderController.dart';
import 'package:khaja_ghar/constants/customColors.dart';
import 'package:provider/provider.dart';

class EachOrderItemMenu extends StatefulWidget {
  final IconData icons;
  final String text;
  final int index;
  final IconData trailing;

  EachOrderItemMenu({
    this.icons,
    this.text,
    this.index,
    this.trailing,
  });

  @override
  _EachOrderItemMenuState createState() => _EachOrderItemMenuState();
}

class _EachOrderItemMenuState extends State<EachOrderItemMenu> {
  HomeScreenController _homeScreenController;

  OrderController _orderController;

  @override
  Widget build(BuildContext context) {
    _homeScreenController = Provider.of<HomeScreenController>(context);

    _orderController = Provider.of<OrderController>(context);

    return GestureDetector(
      onTap: () {
        Provider.of<HomeScreenController>(context, listen: false)
            .onSelect(widget.index);
        _homeScreenController.currentMenuItemIndex == 5 &&
                _homeScreenController.currentMenuItemIndex == widget.index
            ? _homeScreenController.onProductToggle()
            : _orderController.onEachOrderMenuClick(widget.index);
        _homeScreenController.onSelectOrderMenu(widget.index);
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: _homeScreenController.currentMenuItemIndex == widget.index
                ? CustomColors.greenBtn
                : null),
        padding: EdgeInsets.symmetric(
          vertical: 10,
        ),
        margin: EdgeInsets.symmetric(vertical: 2.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(widget.icons,
                    color: _homeScreenController.currentMenuItemIndex ==
                            widget.index
                        ? Colors.white
                        : Colors.black),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  widget.text,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: _homeScreenController.currentMenuItemIndex ==
                              widget.index
                          ? Colors.white
                          : Colors.black),
                ),
              ],
            ),
            _homeScreenController.currentMenuItemIndex == widget.index
                ? GestureDetector(
                    onTap: () {
                      _homeScreenController.onProductToggle();
                    },
                    child: Icon(
                      widget.trailing,
                      size: 24,
                      color: _homeScreenController.currentMenuItemIndex ==
                              widget.index
                          ? Colors.white
                          : Colors.black,
                    ),
                  )
                : SizedBox()
          ],
        ),
      ),
    );
  }
}
