import 'package:flutter/material.dart';
import 'package:khaja_ghar/Screens/EmployeeScreen/addEmployeeScreen.dart';
import 'package:khaja_ghar/Screens/EmployeeScreen/editEmployeeScreen.dart';
import 'package:khaja_ghar/Screens/EmployeeScreen/employeeScreenController.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class Employees extends StatefulWidget {
  @override
  _EmployeesState createState() => _EmployeesState();
}

class _EmployeesState extends State<Employees> {
  EmployeeScreenController _employeeScreenController;

  @override
  Widget build(BuildContext context) {
    _employeeScreenController = Provider.of<EmployeeScreenController>(context);

    if (_employeeScreenController.addNewEmployeeFlag == false) {
      return AddEmployee();
    } else {
      return EditEmployee();
    }
  }
}
