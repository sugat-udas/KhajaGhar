import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:khaja_ghar/Tables/neworderstable.dart';
import 'package:khaja_ghar/constants/components.dart';
import 'package:khaja_ghar/ordersScreen/NewOrderAlertDialog/assignDeliveryBoyAlert.dart';

class NewOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        child: NewOrderBody(),
      ),
    );
  }
}

class NewOrderBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Column(
            children: [
              Container(
                width: 1073,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(35, 35, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SearchBar(),
                          SizedBox(
                            width: 16.5,
                          ),
                          EntriesShowBtn(),
                          SizedBox(
                            width: 10,
                          ),
                          IconBtnSmall()
                        ],
                      ),
                      Container(
                        width: 130,
                        height: 35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.grey),
                        child: ElevatedButton(
                          onPressed: () {
                            _showMyAssignDialog(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xffDBDBDB),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add,
                                color: Colors.black,
                                size: 14.0,
                              ),
                              Text(
                                "Add Order",
                                style: TextStyle(color: Colors.black),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              NewOrderTable(),
              SizedBox(
                height: 30.0,
              ),
              NewOrderTable(),
            ],
          ),
        ],
      ),
    );
  }
}

class NewOrderTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 980,
        height: 421,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 37.0, right: 36.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NewOrdersTableHead(),
              Divider(),
              NewOrderTableSecondPart(),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class NewOrdersTableHead extends StatelessWidget {
  var amount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Invoice no #1294",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("12:04 PM"),
                Image(image: AssetImage('assets/dot.png')),
                Text("21st Dec"),
              ],
            )
          ],
        ),
        MyDivider(),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Name",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            ),
            Text("Rista Gurung")
          ],
        ),
        MyDivider(),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Delivery Address",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            ),
            Text("Rambazar,Pokhara")
          ],
        ),
        MyDivider(),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Contact",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            ),
            Text("9838643649")
          ],
        ),
        MyDivider(),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Rs.2064",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            ),
            Text("Paid(via eSewa)"),
          ],
        )
      ],
    );
  }
}

class MyDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      child: VerticalDivider(color: Colors.grey[300]),
    );
  }
}

Future<void> _showMyAssignDialog(context) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        contentPadding: EdgeInsets.zero,
        content: SingleChildScrollView(
          child: ClipRect(
            child: new BackdropFilter(
              filter: new ImageFilter.blur(
                sigmaX: 200.0,
                sigmaY: 100.0,
              ),
              child: new Container(
                height: 609,
                width: 646,
                child: AssignDeliveryBoyAlert(),
              ),
            ),
          ),
        ),
      );
    },
  );
}
