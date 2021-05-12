import 'package:flutter/material.dart';
import 'package:khaja_ghar/Tables/DataTable.dart';
import 'package:khaja_ghar/constants/components.dart';
import 'package:khaja_ghar/ordersScreen/AlertReadyTodeliver/readyTodeliverAlert.dart';

class ReadyToDeliver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1073.0,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 35.0,
              top: 35.0,
            ),
            child: Row(children: [
              SearchBar(),
              SizedBox(
                width: 16.5,
              ),
              EntriesShowBtn(),
              SizedBox(
                width: 10,
              ),
              ReadyTodeliverIconBtn(),
            ]),
          ),
          SizedBox(
            height: 25,
          ),
          Expanded(child: ItemTable()),
        ],
      ),
    );
  }
}

class ReadyTodeliverIconBtn extends StatelessWidget {
  const ReadyTodeliverIconBtn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      height: 35,
      child: ElevatedButton(
        /*shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        color: Color(0xffDBDBDB),*/
        style: ElevatedButton.styleFrom(
          primary: Color(0xffDBDBDB),
        ),
        child: Image(
          image: AssetImage('assets/Group 282.png'),
        ),
        onPressed: () {
          _showMyDialog(context);
        },
      ),
    );
  }
}

Future<void> _showMyDialog(context) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        contentPadding: EdgeInsets.zero,
        content: SingleChildScrollView(
            child: Container(
          width: 646,
          height: 609,
          color: Colors.grey.shade300,
          child: ReadyToDeliverAlert(),
        )),
      );
    },
  );
}
