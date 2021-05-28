import 'package:flutter/material.dart';

import 'package:khaja_ghar/Screens/EmployeeScreen/employeeMainPage.dart';

// ignore: must_be_immutable
class Employees extends StatefulWidget {
  @override
  _EmployeesState createState() => _EmployeesState();
}

class _EmployeesState extends State<Employees> {
  @override
  Widget build(BuildContext context) {
    return EmployeeMainPage();
  }
}
