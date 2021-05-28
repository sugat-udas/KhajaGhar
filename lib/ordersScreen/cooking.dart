import 'package:flutter/material.dart';
import 'package:khaja_ghar/constants/components.dart';

import '../Tables/DataTable.dart';
import 'CookingAlertDialogContent/alertBody.dart';

class Cooking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Body(),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Column(
            children: [
              Container(
                width: 1073,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(35, 35, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SearchBar(),
                      SizedBox(
                        width: 16.5,
                      ),
                      EntriesShowBtn(),
                      SizedBox(
                        width: 10,
                      ),
                      IconBtn(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Expanded(
                child: ItemTable(),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class IconBtn extends StatelessWidget {
  const IconBtn({
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
      return Expanded(
        child: AlertDialog(
          contentPadding: EdgeInsets.zero,
          content: Container(
            width: 646,
            height: 609,
            color: Colors.grey.shade300,
            child: AlertBody(),
          ),
        ),
      );
    },
  );
}
