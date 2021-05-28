import 'package:flutter/material.dart';
import 'package:khaja_ghar/ScreenController/cookingCRUDController.dart';
import 'package:provider/provider.dart';

class OrderTable extends StatefulWidget {
  @override
  _OrderTableState createState() => _OrderTableState();
}

class _OrderTableState extends State<OrderTable> {
  int value = 0;
  CookingCRUDController _cookingCRUDController;
  @override
  Widget build(BuildContext context) {
    _cookingCRUDController = Provider.of<CookingCRUDController>(context);
    return Container(
      width: 585,
      //height: 247,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Table(
                columnWidths: {
                  0: FlexColumnWidth(1.2),
                  1: FlexColumnWidth(0.8),
                  2: FlexColumnWidth(1),
                  3: FlexColumnWidth(0.8),
                },
                border: TableBorder(
                    horizontalInside:
                        BorderSide(width: 1, color: Colors.grey[300])),
                children: [
                  TableRow(
                      decoration: BoxDecoration(color: Colors.grey),
                      children: [
                        for (var head in _cookingCRUDController.tableHead)
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
                  for (var item in _cookingCRUDController.tableInfoList)
                    TableRow(
                      children: [
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: _infoName(
                            text: item[0],
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                  icon: Image.asset('assets/Group 55.png'),
                                  onPressed: () {
                                    var value = _cookingCRUDController
                                        .onClickMinusBtn(item[1]);
                                    setState(() {
                                      item[1] = value;
                                      if (value < 0) {
                                        setState(() {
                                          item[1] = 0;
                                        });
                                      }
                                    });
                                  }),
                              Text(item[1].toString()),
                              IconButton(
                                  icon: Image.asset('assets/Group 56.png'),
                                  onPressed: () {
                                    var value = _cookingCRUDController
                                        .onClickPlusBtn(item[1]);
                                    setState(() {
                                      item[1] = value;
                                    });
                                  }),
                            ],
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: _infoName(
                            text: item[2],
                          ),
                        ),
                        TableCell(
                            child: Image(
                                image: AssetImage('assets/Group 298.png')))
                      ],
                    )
                ],
              ),
              Divider(),
              CookingAdvice()
            ],
          ),
        ),
      ),
    );
  }
}

class CookingAdvice extends StatelessWidget {
  const CookingAdvice({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14, top: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Cooking Advice",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed",
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "do eiusmod tempor incididunt ut.",
            style: TextStyle(
              fontSize: 14,
            ),
          )
        ],
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
