import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      child: ElevatedButton.icon(
        //elevation: 0,
        //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        icon: Icon(
          Icons.menu,
          size: 14,
          color: Colors.black,
        ),
        label: Text(
          "Showing 6 entries",
          style: TextStyle(fontSize: 13, color: Colors.black),
        ),
        onPressed: () {},
        // color: Color(0xffDBDBDB),
        style: ElevatedButton.styleFrom(
            primary: Color(0xffDBDBDB),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
      ),
    );
  }
}

class IconBtnSmall extends StatelessWidget {
  const IconBtnSmall({
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
        onPressed: () {},
      ),
    );
  }
}

// ignore: must_be_immutable
class BtnClass extends StatefulWidget {
  Color bColor;
  String bText;
  Image bImage;
  Color bTextColor = Colors.white;
  Function onpressed;
  BtnClass(
      {@required this.bColor,
      @required this.bText,
      this.bImage,
      @required this.onpressed,
      this.bTextColor});

  @override
  _BtnClassState createState() => _BtnClassState();
}

class _BtnClassState extends State<BtnClass> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25),
      child: Expanded(
        child: Container(
          width: 130.0,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: widget.bColor),
            onPressed: widget.onpressed,
            child: Row(
              children: [
                widget.bImage,
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  widget.bText,
                  style: TextStyle(color: widget.bTextColor),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyCheckBox extends StatefulWidget {
  @override
  _MyCheckBoxState createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 18.0,
      height: 18.0,
      color: Colors.white,
      child: Checkbox(
          value: isChecked,
          onChanged: (bool newValue) {
            setState(() {
              isChecked = !isChecked;
            });
          }),
    );
  }
}

// ignore: must_be_immutable
class BtnBtn extends StatefulWidget {
  String text;
  Color color;
  Function onPressed;
  BtnBtn({
    this.color,
    this.text,
    this.onPressed,
  });

  @override
  _BtnBtnState createState() => _BtnBtnState();
}

class _BtnBtnState extends State<BtnBtn> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25),
      child: Expanded(
        child: Container(
          width: 130,
          height: 35,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: widget.color),
            onPressed: widget.onPressed,
            child: Text(widget.text),
          ),
        ),
      ),
    );
  }
}
