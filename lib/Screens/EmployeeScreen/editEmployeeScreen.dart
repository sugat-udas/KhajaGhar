import 'dart:html';

import 'package:flutter/material.dart';
import 'package:khaja_ghar/Screens/EmployeeScreen/Thumbnail.dart';
import 'package:khaja_ghar/Screens/EmployeeScreen/addEmployeeScreen.dart';
import 'package:khaja_ghar/Screens/EmployeeScreen/employeeScreenController.dart';
import 'package:khaja_ghar/Screens/EmployeeScreen/personalInformation.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class EditEmployee extends StatefulWidget {
  String newName;
  String newEmail;
  String newContact;
  @override
  _EditEmployeeState createState() => _EditEmployeeState();
}

class _EditEmployeeState extends State<EditEmployee> {
  EmployeeScreenController _employeeScreenController;

  @override
  Widget build(BuildContext context) {
    _employeeScreenController = Provider.of<EmployeeScreenController>(context);
    return Container(
      width: MediaQuery.of(context).size.width - 215,
      child: Padding(
        padding: const EdgeInsets.only(left: 33.0, right: 25.0, top: 19.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopColumn(
                bText: "Edit Employee",
                bOnpressed: () {
                  _employeeScreenController.employeeName
                      .insert(_employeeScreenController.index, [
                    _employeeScreenController.aImage == null
                        ? _employeeScreenController.editingItemList[0][0]
                        : _employeeScreenController.aImage,
                    widget.newName == null
                        ? _employeeScreenController.editingItemList[0][1]
                        : widget.newName,
                    widget.newEmail == null
                        ? _employeeScreenController.editingItemList[0][2]
                        : widget.newEmail,
                    widget.newContact == null
                        ? _employeeScreenController.editingItemList[0][3]
                        : widget.newContact,
                    _employeeScreenController.editingItemList[0][4],
                    _employeeScreenController.editingItemList[0][5],
                  ]);
                  setState(() {
                    _employeeScreenController.employeeName
                        .removeAt(_employeeScreenController.index + 1);
                    _employeeScreenController.changeEditFlag();
                  });
                  _employeeScreenController.editingItemList.clear();
                },
              ),
              SizedBox(
                height: 23.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      //width: 490.0,
                      // height: 401.0,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            bottom: 50.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InsideTableComponents(
                                  headingText: "Personal Information"),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 22.0,
                                    top: 20.0,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      _insideComponents("Name"),
                                      Container(
                                        width: 436,
                                        height: 35,
                                        child: TextFormField(
                                          initialValue:
                                              _employeeScreenController
                                                      .employeeName[
                                                  _employeeScreenController
                                                      .index][1],
                                          onChanged: (value) {
                                            setState(() {
                                              widget.newName = value;
                                            });
                                          },
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            hintText: "Enter Name",
                                            hintStyle:
                                                TextStyle(fontSize: 14.0),
                                          ),
                                        ),
                                      ),
                                      _insideComponents(
                                        "Email",
                                      ),
                                      Container(
                                        width: 436,
                                        height: 35,
                                        child: TextFormField(
                                          initialValue:
                                              _employeeScreenController
                                                      .employeeName[
                                                  _employeeScreenController
                                                      .index][2],
                                          onChanged: (value) => {
                                            widget.newEmail = value,
                                          },
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            hintText: "Enter Email",
                                            hintStyle:
                                                TextStyle(fontSize: 14.0),
                                          ),
                                        ),
                                      ),
                                      _insideComponents(
                                        "Contact no",
                                      ),
                                      Container(
                                        width: 436,
                                        height: 35,
                                        child: TextFormField(
                                          initialValue:
                                              _employeeScreenController
                                                      .employeeName[
                                                  _employeeScreenController
                                                      .index][3],
                                          onChanged: (value) => {
                                            widget.newContact = value,
                                          },
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            hintText: "Enter Contact Number",
                                            hintStyle:
                                                TextStyle(fontSize: 14.0),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "Department",
                                        style: TextStyle(fontSize: 14.0),
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      statusDispalay(
                                        "Nothing selected",
                                        Colors.grey[400],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 28.0,
                  ),
                  ThumbnailWidget(
                    imgPath: _employeeScreenController
                        .employeeName[_employeeScreenController.index][0],
                    pText: "",
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                'Permissions',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      HeadingColumn(
                        headingText: "Client",
                        index: 6,
                      ),
                      SizedBox(
                        height: 24.0,
                      ),
                      HeadingColumn(
                        headingText: "POS",
                        index: 6,
                      ),
                      SizedBox(
                        height: 24.0,
                      ),
                      HeadingColumn(
                        headingText: "KDS",
                        index: 1,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 28.0,
                  ),
                  Column(
                    children: [
                      HeadingColumn(
                        headingText: "Back Office",
                        index: 6,
                      ),
                      SizedBox(
                        height: 24.0,
                      ),
                      HeadingColumn(
                        headingText: "Delivery App",
                        index: 3,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 24.0,
              ),
              Container(
                height: 179,
                width: 1008,
                child: Card(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(color: Colors.grey[300]),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 16.0, top: 12.0, bottom: 8.0, right: 34.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Extra"),
                              Icon(Icons.arrow_drop_down)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget _insideComponents(String topText) {
  return Padding(
    padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          topText,
          style: TextStyle(fontSize: 14.0),
        ),
        SizedBox(
          height: 10.0,
        ),
      ],
    ),
  );
}

Widget statusDispalay(String text, Color color) {
  return GestureDetector(
    child: Container(
      //height: 20,
      width: 120.0,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 5.0,
          bottom: 5.0,
          left: 12.0,
          right: 12.0,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Colors.black, fontSize: 11),
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
    ),
    onTap: () {
      //   print(newInfoDetail);
    },
  );
}
