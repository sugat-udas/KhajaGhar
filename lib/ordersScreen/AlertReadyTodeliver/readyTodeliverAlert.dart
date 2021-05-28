import 'package:flutter/material.dart';

import 'package:khaja_ghar/ordersScreen/AlertReadyTodeliver/readyToDeliverTable.dart';
import 'package:khaja_ghar/ordersScreen/CookingAlertDialogContent/alertBody.dart';

class ReadyToDeliverAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ReadyToDeliverFirstColumn(),
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
          padding: const EdgeInsets.only(left: 30.0),
          child: ReadyToDeliverTable(),
        ),
        Divider(),
        Padding(
            padding: const EdgeInsets.only(left: 35.0),
            child: LastColumn(stext: "Accepted", scolor: Colors.green)),
      ],
    );
  }
}

class ReadyToDeliverFirstColumn extends StatelessWidget {
  const ReadyToDeliverFirstColumn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 35, left: 35),
      child: Container(
        //height: 127,
        child: Row(
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
      ),
    );
  }
}

Widget btnbtn(String text, Color color) {
  return Container(
    padding: EdgeInsets.only(right: 25.0),
    width: 130,
    height: 35,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(primary: color),
      onPressed: () {},
      child: Text(text),
    ),
  );
}
