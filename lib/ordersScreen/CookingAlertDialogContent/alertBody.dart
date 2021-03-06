import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:khaja_ghar/constants/components.dart';
import 'package:khaja_ghar/constants/customColors.dart';

import 'package:khaja_ghar/ordersScreen/CookingAlertDialogContent/orderTable.dart';

class AlertBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        FirstColumn(),
        SizedBox(
          height: 28,
        ),
        Divider(
          color: Colors.white,
        ),
        SecondColumn(),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: OrderTable(),
        ),
        SizedBox(
          height: 8,
        ),
        Divider(
          color: Colors.white,
        ),
        SizedBox(
          height: 8,
        ),
        Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child:
                LastColumn(stext: "Pending", scolor: CustomColors.creditColor)),
      ],
    );
  }
}

// ignore: must_be_immutable
class LastColumn extends StatelessWidget {
  String stext;
  Color scolor;

  LastColumn({
    @required this.stext,
    @required this.scolor,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Assigned To",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: AssetImage('assets/assigned_pic.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hari Sharma",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "9827465820",
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    statusDispalay(stext, scolor),
                  ],
                ),
              ),
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 32,
                  ),
                  child: Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      color: CustomColors.greenColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Image.asset('assets/notificationicon.png'),
                  ),
                ),
                onTap: () {
                  _showMyTransparentDialog(context);
                },
              )
            ],
          ),
        )
      ],
    );
  }
}

Widget statusDispalay(String text, Color color) {
  return Container(
    decoration: BoxDecoration(
        color: CustomColors.creditColor,
        borderRadius: BorderRadius.circular(12)),
    child: Padding(
      padding: const EdgeInsets.only(
        top: 5.0,
        bottom: 5.0,
        left: 8.0,
        right: 8.0,
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 11),
        ),
      ),
    ),
  );
}

class SecondColumn extends StatelessWidget {
  const SecondColumn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 36, right: 29),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Invoice no #2939",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text("Rs.2064", style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    "02:04 PM",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: Image(image: AssetImage('assets/dot.png')),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "31st Dec",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              Text(
                "Unpaid",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class FirstColumn extends StatelessWidget {
  const FirstColumn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 35, left: 35),
      child: Container(
        //height: 127,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 65,
                  height: 69,
                  child: CircleAvatar(
                    backgroundImage: new AssetImage(
                      'assets/picpic.png',
                    ),
                    // radius: 80.0,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Kritika Pokharel'),
                    Text('9898654628'),
                    Text('ChipleDhunga, Pokhara'),
                  ],
                ),
              ],
            ),
            BtnBtn(
              text: "Cancel",
              color: Colors.red,
              onPressed: () {},
            )
            //BtnClass(bColor: Colors.red, bText: "Cancel")
          ],
        ),
      ),
    );
  }
}

Future<void> _showMyTransparentDialog(context) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        contentPadding: EdgeInsets.zero,
        content: SingleChildScrollView(
          child: ClipRect(
            child: new BackdropFilter(
              filter: new ImageFilter.blur(
                sigmaX: 200.0,
                sigmaY: 100.0,
              ),
              child: new Container(
                height: 273,
                child: Column(
                  children: [
                    // Padding(
                    //  padding: const EdgeInsets.only(left: 280),
                    // child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image(
                                image: AssetImage("assets/Exit.png"),
                              ),
                            ),
                            onTap: () {
                              Navigator.pop(context);
                            }),
                      ],
                    ),
                    // ),
                    SizedBox(
                      height: 50,
                    ),
                    Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(image: AssetImage('assets/Sucess button.png')),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            'Suresh will be notified',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    },
  );
}
