import 'package:flutter/material.dart';
import 'package:khaja_ghar/ordersScreen/AlertReadyTodeliver/readyToDeliverTableController.dart';

import 'package:khaja_ghar/ordersScreen/CookingAlertDialogContent/orderTable.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class ReadyToDeliverTable extends StatelessWidget {
  ReadyToDeliverTableController _readyToDeliverTableController;
  @override
  Widget build(BuildContext context) {
    _readyToDeliverTableController =
        Provider.of<ReadyToDeliverTableController>(context);
    return Container(
      width: 585.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Table(
              border: TableBorder(
                  horizontalInside:
                      BorderSide(width: 1, color: Colors.grey[300])),
              children: [
                TableRow(
                    decoration: BoxDecoration(color: Colors.grey),
                    children: [
                      for (var head in _readyToDeliverTableController.tableHead)
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
                for (var item in _readyToDeliverTableController.tableInfoList)
                  TableRow(
                    children: [
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: _infoName(
                          text: item[0],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: _infoName(
                            text: item[1].toString(),
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: _infoName(
                          text: item[2],
                        ),
                      ),
                    ],
                  )
              ],
            ),
            Divider(),
            CookingAdvice(),
          ],
        ),
      ),
    );
  }
}

Widget _infoName({String text}) {
  return Padding(
    padding: EdgeInsets.only(top: 10, bottom: 10, left: 29.0),
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
