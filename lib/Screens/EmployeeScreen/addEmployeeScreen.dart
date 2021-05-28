import 'package:flutter/material.dart';
import 'package:khaja_ghar/Screens/EmployeeScreen/Thumbnail.dart';
import 'package:khaja_ghar/Screens/EmployeeScreen/employeeScreenController.dart';
import 'package:khaja_ghar/Screens/EmployeeScreen/personalInformation.dart';
import 'package:khaja_ghar/constants/components.dart';
import 'package:khaja_ghar/constants/customColors.dart';
import 'package:provider/provider.dart';

class AddEmployee extends StatefulWidget {
  @override
  _AddEmployeeState createState() => _AddEmployeeState();
}

class _AddEmployeeState extends State<AddEmployee> {
  EmployeeScreenController _employeeScreenController;
  List newInfoDetail = [];

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
                bText: "Add Employee",
                bOnpressed: () {
                  setState(() {
                    _employeeScreenController.changeFlage();
                    print(_employeeScreenController.addNewEmployeeFlag);

                    _employeeScreenController.setName([
                      _employeeScreenController.aImage,
                      _employeeScreenController.aName,
                      _employeeScreenController.aEmail,
                      _employeeScreenController.aContact,
                      "*****",
                      "KDS",
                    ]);
                  });
                },
              ),
              SizedBox(
                height: 23.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PersonalInformationwidget(),
                  SizedBox(
                    width: 28.0,
                  ),
                  ThumbnailWidget(
                    imgPath: 'assets/Path 419.png',
                    pText: "Tile Display",
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

// ignore: must_be_immutable
class CheckBoxAndTextClass extends StatelessWidget {
  String tText;
  CheckBoxAndTextClass({
    this.tText,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 16.0, top: 12.0, bottom: 8.0, right: 74.0),
      child: Row(
        children: [
          MyCheckBox(),
          SizedBox(
            width: 8.0,
          ),
          Text(tText),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class HeadingColumn extends StatelessWidget {
  EmployeeScreenController _employeeScreenController;
  String headingText;
  int index;
  HeadingColumn({
    @required this.headingText,
    @required this.index,
  });
  @override
  Widget build(BuildContext context) {
    _employeeScreenController = Provider.of<EmployeeScreenController>(context);
    return Card(
      child: Container(
        width: 490,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                  top: 10.0,
                  bottom: 9.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        MyCheckBox(),
                        SizedBox(
                          width: 8.0,
                        ),
                        Text(headingText),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 22.0),
                      child: Icon(Icons.arrow_drop_down),
                    )
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (var i = 0; i <= index; i++)
                      CheckBoxAndTextClass(
                        tText: _employeeScreenController.permissionList[i],
                      )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (var i = 0; i <= index; i++)
                      CheckBoxAndTextClass(
                        tText: _employeeScreenController.permissionList[i],
                      )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class TopColumn extends StatefulWidget {
  String bText;
  Function bOnpressed;
  TopColumn({
    this.bOnpressed,
    this.bText,
    Key key,
  }) : super(key: key);

  @override
  _TopColumnState createState() => _TopColumnState();
}

class _TopColumnState extends State<TopColumn> {
  String name = PersonalInformationwidget().nameCont;
  String email = PersonalInformationwidget().emailCont;
  String contact = PersonalInformationwidget().contactCont;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Row(
            children: [
              Icon(
                Icons.backspace_outlined,
                size: 10.0,
              ),
              Text(
                'Back',
                style: TextStyle(color: Colors.grey, fontSize: 14.0),
              )
            ],
          ),
        ),
        //btnbtn("Add Employee", CustomColors.greenColor,_onPressed),
        BtnBtn(
          text: widget.bText,
          color: CustomColors.greenColor,
          onPressed: widget.bOnpressed,
        )
      ],
    );
  }
}
