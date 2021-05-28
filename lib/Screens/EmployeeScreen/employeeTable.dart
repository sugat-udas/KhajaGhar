import 'package:flutter/material.dart';

import 'package:khaja_ghar/Screens/EmployeeScreen/employeeScreenController.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class EmployeeTable extends StatefulWidget {
  @override
  _EmployeeTableState createState() => _EmployeeTableState();
}

class _EmployeeTableState extends State<EmployeeTable> {
  EmployeeScreenController _employeeScreenController;

  @override
  Widget build(BuildContext context) {
    int index;
    _employeeScreenController = Provider.of<EmployeeScreenController>(context);
    return Card(
      child: Table(
        border: TableBorder(
            horizontalInside:
                BorderSide(width: 0.5, color: Colors.grey[100])),
        columnWidths: {
          0: FlexColumnWidth(0.5),
          1: FlexColumnWidth(1),
          2: FlexColumnWidth(1.5),
          3: FlexColumnWidth(1),
          4: FlexColumnWidth(1),
          5: FlexColumnWidth(1),
          6: FlexColumnWidth(0.65),
        },
        children: [
          TableRow(children: [
            for (var head in _employeeScreenController.tableHead)
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 16.0,
                    bottom: 16.0,
                    left: 32.0,
                    right: 32.0,
                  ),
                  child: Text(
                    head,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
          ]),
          for (var item in _employeeScreenController.employeeName)
            TableRow(children: [
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Container(
                      width: 40.0,
                      height: 40.0,
                      child: item[0].runtimeType == String
                          ? Image.asset(item[0].toString())
                          : Image.memory(item[0])),
                ),
              ),
              TableCell(
                child: _infoName(text: item[1].toString()),
              ),
              TableCell(
                child: _infoName(text: item[2].toString()),
              ),
              TableCell(
                child: _infoName(text: item[3].toString()),
              ),
              TableCell(
                child: _infoName(text: item[4].toString()),
              ),
              TableCell(
                child: _infoName(text: item[5].toString()),
              ),
              //TableCell(child: Text('Abcd')),
              TableCell(
                child: Padding(
                  padding: EdgeInsets.only(top: 16.0),
                  child: Container(
                    width: 4.0,
                    height: 18.0,
                    child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _employeeScreenController.aImage = null;
                            _employeeScreenController.index =
                                _employeeScreenController.employeeName
                                    .indexOf(item);
                          });

                          print(index);
                          print("pressed2");
                          _employeeScreenController.changeEditFlag();

                          _employeeScreenController.editingItemList.add([
                            _employeeScreenController.employeeName[
                                _employeeScreenController.index][0],
                            _employeeScreenController.employeeName[
                                _employeeScreenController.index][1],
                            _employeeScreenController.employeeName[
                                _employeeScreenController.index][2],
                            _employeeScreenController.employeeName[
                                _employeeScreenController.index][3],
                            _employeeScreenController.employeeName[
                                _employeeScreenController.index][4],
                            _employeeScreenController.employeeName[
                                _employeeScreenController.index][5],
                          ]);
                          print(_employeeScreenController.editingItemList);
                        },
                        child: Image.asset("assets/Group 697.png")),
                  ),
                ),
              ),
            ])
        ],
      ),
    );
  }
}

Widget _infoName({String text}) {
  return Padding(
    padding: EdgeInsets.only(
      top: 23.0,
      bottom: 26.0,
      left: 29.0,
    ),
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
