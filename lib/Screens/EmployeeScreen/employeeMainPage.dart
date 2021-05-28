import 'package:flutter/material.dart';
import 'package:khaja_ghar/Screens/EmployeeScreen/addEmployeeScreen.dart';
import 'package:khaja_ghar/Screens/EmployeeScreen/editEmployeeScreen.dart';
import 'package:khaja_ghar/Screens/EmployeeScreen/employeeScreenController.dart';
import 'package:khaja_ghar/Screens/EmployeeScreen/employeeTable.dart';
import 'package:khaja_ghar/constants/components.dart';
import 'package:khaja_ghar/constants/customColors.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class EmployeeMainPage extends StatelessWidget {
  EmployeeScreenController _employeeScreenController;
  @override
  Widget build(BuildContext context) {
    _employeeScreenController = Provider.of<EmployeeScreenController>(context);
    return _employeeScreenController.addNewEmployeeFlag == true
        ? AddEmployee()
        : _employeeScreenController.editEmployeeFlag == true
            ? EditEmployee()
            : Container(
                width: MediaQuery.of(context).size.width - 246,
                padding: EdgeInsets.only(
                  top: 32.0,
                  left: 32.0,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SearchBar(),
                            SizedBox(
                              width: 5.0,
                            ),
                            EntriesShowBtn(),
                            SizedBox(
                              width: 5.0,
                            ),
                            IconBtnSmall(),
                          ],
                        ),
                        ButtonWithIcon(
                          btnColor: CustomColors.greenBtn,
                          btnIcon: Icon(Icons.add, color: Colors.white),
                          btnText: "Add New",
                          btnTextColor: Colors.white,
                          onPressed: () {
                            _employeeScreenController.changeFlage();
                          },
                        )
                      ],
                    ),
                    SizedBox(
                      height: 23.0,
                    ),
                    Expanded(child: EmployeeTable()),
                  ],
                ),
              );
  }
}
