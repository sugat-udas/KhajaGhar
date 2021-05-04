import 'package:flutter/material.dart';
import 'package:khaja_ghar/ScreenController/cookingScreenController.dart';
import 'package:khaja_ghar/constants/customColors.dart';
import 'package:provider/provider.dart';

class ItemTable extends StatefulWidget {
  @override
  _ItemTableState createState() => _ItemTableState();
}

class _ItemTableState extends State<ItemTable> {
  CookingScreenController _cookingScreenController;

  @override
  Widget build(BuildContext context) {
    _cookingScreenController = Provider.of<CookingScreenController>(context);
    return Card(
      child: Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: Container(
          width: 980,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Table(
              columnWidths: {
                0: FlexColumnWidth(1),
                1: FlexColumnWidth(1.2),
                2: FlexColumnWidth(),
                3: FlexColumnWidth(0.7),
                4: FlexColumnWidth(),
                5: FlexColumnWidth(1.1),
                6: FlexColumnWidth(1.2),
              },
              border: TableBorder(
                  horizontalInside:
                      BorderSide(width: 0.5, color: Colors.grey[100])),
              children: [
                TableRow(children: [
                  for (var head in _cookingScreenController.itemHeadList)
                    TableCell(
                        child: Padding(
                      padding: EdgeInsets.only(
                        top: 20,
                        bottom: 12.5,
                        left: 35.0,
                        right: 20.0,
                      ),
                      child: Text(
                        head.toString(),
                        // textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ))
                ]),
                for (var item in _cookingScreenController.itemInfoList)
                  TableRow(children: [
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: _infoName(
                        text: item[0],
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: _infoName(
                        text: item[1],
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: _infoName(
                        text: item[2],
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: _infoName(
                        text: item[3],
                      ),
                    ),
                    TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: _colorMaker(
                          text: item[4],
                        )),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: _infoName(
                        text: item[5],
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: _infoName(
                        text: item[6],
                      ),
                    ),
                  ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _infoName({String text}) {
  return Padding(
    padding: EdgeInsets.only(top: 24.5, bottom: 19.5, left: 29.0),
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

Widget _colorMakerWidget(String text, Color color) {
  return Padding(
    padding: const EdgeInsets.only(left: 43, right: 43),
    child: Container(
      height: 20,
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              fontSize: 11,
              color: text == 'unpaid' ? Colors.black : Colors.white),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
    ),
  );
}

Widget _colorMaker({String text}) {
  if (text == "unpaid") {
    return _colorMakerWidget(text, CustomColors.unpaidColor);
  } else if (text == "khalti") {
    return _colorMakerWidget(text, CustomColors.khaltiColor);
  } else if (text == "eSewa") {
    return _colorMakerWidget(text, CustomColors.greenColor);
  } else if (text == "fonePay") {
    return _colorMakerWidget(text, Colors.red);
  } else {
    return _colorMakerWidget(text, CustomColors.creditColor);
  }
}
