/*import 'package:flutter/material.dart';

import '../DataTable.dart';

class OrderScreen extends StatelessWidget {
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
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        color: Color(0xffDBDBDB),
        child: Image(
          image: AssetImage('assets/Group 282.png'),
        ),
        onPressed: () {},
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(-4, 0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        elevation: 2,
        child: Container(
          width: 401,
          height: 35,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
          child: TextField(
            decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 15),
                hintText: "Search...",
                hintStyle: TextStyle(color: Colors.grey),
                suffixIcon: Icon(
                  Icons.search,
                  size: 19,
                  color: Colors.grey,
                ),
                filled: true,
                fillColor: Colors.white,
                enabled: true,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: BorderSide.none),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: BorderSide.none)),
          ),
        ),
      ),
    );
  }
}

class EntriesShowBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 155.5,
      child: RaisedButton.icon(
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        icon: Icon(Icons.menu, size: 14),
        label: Text(
          "Showing 6 entries",
          style: TextStyle(fontSize: 13),
        ),
        onPressed: () {},
        color: Color(0xffDBDBDB),
      ),
    );
  }
}*/
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('this is orders main screen'),
    );
  }
}
