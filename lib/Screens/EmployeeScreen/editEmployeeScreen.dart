import 'package:flutter/material.dart';
import 'package:khaja_ghar/Screens/EmployeeScreen/Thumbnail.dart';
import 'package:khaja_ghar/Screens/EmployeeScreen/addEmployeeScreen.dart';
import 'package:khaja_ghar/Screens/EmployeeScreen/personalInformation.dart';

class EditEmployee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 215,
      child: Padding(
        padding: const EdgeInsets.only(left: 33.0, right: 25.0, top: 19.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopColumn(),
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
                    imgPath: 'assets/Group 342.png',
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
