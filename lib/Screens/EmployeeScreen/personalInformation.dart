import 'package:flutter/material.dart';

class PersonalInformationwidget extends StatelessWidget {
  const PersonalInformationwidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: 490.0,
      // height: 401.0,
      child: Card(
        child: Expanded(
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
                        _insideComponents(
                          "Name",
                          "Enter Name",
                        ),
                        _insideComponents("Email", "Enter Email"),
                        _insideComponents("Contact no", "Enter contact number"),
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
}

Widget statusDispalay(String text, Color color) {
  return Container(
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
  );
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

Widget _insideComponents(String topText, String _hintText) {
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
        Container(
          width: 436,
          height: 35,
          child: TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              hintText: _hintText,
              hintStyle: TextStyle(fontSize: 14.0),
            ),
          ),
        )
      ],
    ),
  );
}
