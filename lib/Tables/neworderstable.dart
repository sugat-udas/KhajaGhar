import 'package:flutter/material.dart';
import 'package:khaja_ghar/ScreenController/newOrdersController.dart';
import 'package:khaja_ghar/constants/components.dart';
import 'package:khaja_ghar/ordersScreen/CookingAlertDialogContent/orderTable.dart';
import 'package:provider/provider.dart';

class NewOrderTableSecondPart extends StatefulWidget {
  @override
  _NewOrderTableSecondPartState createState() =>
      _NewOrderTableSecondPartState();
}

class _NewOrderTableSecondPartState extends State<NewOrderTableSecondPart> {
  NewOrdersController _newOrdersController;

  @override
  Widget build(BuildContext context) {
    _newOrdersController = Provider.of<NewOrdersController>(context);
    return Container(
      width: 907,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Table(
              columnWidths: {
                0: FlexColumnWidth(0.5),
                1: FlexColumnWidth(1),
                2: FlexColumnWidth(1),
                3: FlexColumnWidth(1),
                4: FlexColumnWidth(1),
                5: FlexColumnWidth(1),
                6: FlexColumnWidth(1)
              },
              border: TableBorder(
                horizontalInside: BorderSide(
                  width: 1,
                  color: Colors.grey[300],
                ),
              ),
              children: [
                TableRow(
                    decoration: BoxDecoration(color: Colors.grey),
                    children: [
                      for (var head in _newOrdersController.newOrdersHeadList)
                        TableCell(
                            child: Padding(
                          padding: EdgeInsets.only(
                            top: 10,
                            bottom: 12.5,
                            left: 35.0,
                            right: 0,
                          ),
                          child: Text(
                            head.toString(),
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ))
                    ]),
                for (var item in _newOrdersController.newOrdersTableInfoList)
                  TableRow(children: [
                    TableCell(
                      child: _imageMaker(item[0]),
                    ),
                    TableCell(
                      child: listInfo(item[1]),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                              icon: Image.asset('assets/Group 55.png'),
                              onPressed: () {
                                var value = _newOrdersController
                                    .onClickMinusBtn(item[2]);
                                setState(() {
                                  item[2] = value;
                                  if (value < 0) {
                                    setState(() {
                                      item[2] = 0;
                                    });
                                  }
                                });
                              }),
                          Text(item[2].toString()),
                          IconButton(
                              icon: Image.asset('assets/Group 56.png'),
                              onPressed: () {
                                var value = _newOrdersController
                                    .onClickPlusBtn(item[2]);
                                setState(() {
                                  item[2] = value;
                                });
                              }),
                        ],
                      ),
                    ),
                    TableCell(
                        child: Padding(
                      padding: const EdgeInsets.only(top: 24.0, bottom: 20.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Rs."),
                          Text(item[3].toString()),
                        ],
                      ),
                    )),
                    TableCell(
                      child: _infoName(text: item[4]),
                    ),
                    TableCell(
                      child: totalAmount(item[2], item[3]),
                    ),
                    TableCell(
                        child: Image(image: AssetImage('assets/Group 298.png')))
                  ]),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CookingAdvice(),
                Row(
                  children: [
                    // btnbtn("Cancel Order", Colors.red),
                    // btnbtn("Accept Order", Colors.green),
                    BtnBtn(
                      text: "Cancel Order",
                      color: Colors.red,
                      onPressed: () {},
                    ),
                    BtnBtn(
                      text: "Accept Order",
                      color: Colors.green,
                      onPressed: () {},
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget totalAmount(int value1, int value2) {
  var _finalValue = value1 * value2;
  return Padding(
    padding: const EdgeInsets.only(
      left: 29.0,
      bottom: 20.0,
      top: 24.0,
    ),
    child: Row(
      children: [
        Text("Rs."),
        Text(_finalValue.toString()),
      ],
    ),
  );
}

Widget listInfo(List listItem) {
  if (listItem.length <= 1) {
    return Padding(
      padding: const EdgeInsets.only(left: 29.0, top: 24, bottom: 20),
      child: Text(listItem[0]),
    );
  } else {
    return Padding(
      padding: const EdgeInsets.only(left: 29.0, top: 24, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(listItem[0]),
          Text(listItem[1]),
          Text(listItem[2]),
        ],
      ),
    );
  }
}

Widget _imageMaker(String imgName) {
  if (imgName == "French Fries") {
    return Image(image: AssetImage('assets/french fries.png'));
  } else if (imgName == "Chicken Mo:MO") {
    return Image(image: AssetImage("assets/momo.png"));
  } else {
    return Image(image: AssetImage("assets/black forest.png"));
  }
}

Widget _infoName({String text}) {
  return Padding(
    padding: EdgeInsets.only(top: 24.5, bottom: 19.5, left: 40.0),
    child: Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: TextStyle(
            // fontFamily:
            //     "Roboto",
            fontSize: 14.0),
      ),
    ),
  );
}
