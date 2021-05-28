import 'package:flutter/material.dart';
import 'package:khaja_ghar/Screens/EmployeeScreen/employeeScreenController.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class PersonalInformationwidget extends StatefulWidget {
  String emailCont;
  String nameCont;
  String contactCont;
  PersonalInformationwidget({
    Key key,
  }) : super(key: key);

  @override
  _PersonalInformationwidgetState createState() =>
      _PersonalInformationwidgetState();
}

class _PersonalInformationwidgetState extends State<PersonalInformationwidget> {
  EmployeeScreenController _employeeScreenController;

  String newInfo;

  List newInfoDetail = [];

  @override
  Widget build(BuildContext context) {
    _employeeScreenController = Provider.of<EmployeeScreenController>(context);

    return Expanded(
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
                InsideTableComponents(headingText: "Personal Information"),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 22.0,
                      top: 20.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _insideComponents("Name"),
                        Container(
                          width: 436,
                          height: 35,
                          child: TextFormField(
                            onChanged: (value) {
                              _employeeScreenController.aName = value;
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              hintText: "Enter Name",
                              hintStyle: TextStyle(fontSize: 14.0),
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
                            onChanged: (value) => {
                              _employeeScreenController.aEmail = value,
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              hintText: "Enter Email",
                              hintStyle: TextStyle(fontSize: 14.0),
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
                            onChanged: (value) => {
                              _employeeScreenController.aContact = value,
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              hintText: "Enter Contact Number",
                              hintStyle: TextStyle(fontSize: 14.0),
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
    );
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
        child: Expanded(
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
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
      ),
      onTap: () {
        setState(() {
          /* newInfoDetail.add(widget.nameCont);
          newInfoDetail.add(widget.emailCont);
          newInfoDetail.add(widget.contactCont);
*/
        });
        //   print(newInfoDetail);
      },
    );
  }
}

// ignore: must_be_immutable
class InsideTableComponents extends StatelessWidget {
  String headingText;
  InsideTableComponents({
    @required this.headingText,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 490.0,
      decoration: BoxDecoration(
        color: Colors.grey[400],
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 16.0,
          top: 10.0,
          bottom: 9.0,
        ),
        child: Text(
          headingText,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
