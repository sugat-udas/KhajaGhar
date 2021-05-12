import 'package:flutter/material.dart';
import 'package:khaja_ghar/constants/components.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

class AssignDeliveryBoyAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 14.0, right: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 1.0,
                  height: 1.0,
                ),
                Column(
                  children: [
                    Text(
                      "Assign Delivery Boy",
                      style: TextStyle(
                          fontSize: 28.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'Select From the List',
                      style: TextStyle(
                        fontSize: 22.0,
                      ),
                    ),
                  ],
                ),
                Image(image: AssetImage("assets/Exit.png"))
              ],
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          Divider(
            color: Colors.white,
          ),
          DeliveryBoy(),
          Padding(
            padding: const EdgeInsets.only(left: 55.0, right: 8.0, top: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Skip",
                  style: TextStyle(fontSize: 14.0, color: Colors.grey[800]),
                ),
                BtnBtn(
                  text: "Assign",
                  color: Colors.green,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class DeliveryBoy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 35.0, left: 45.0, right: 46.0),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _deliveryListMaker(
                    "assets/Ellipse 50.png", "Suresh Khanal", "938239472", "2"),
                _deliveryListMaker(
                    "assets/Ellipse 50.png", "Diljit Singh", "9284088764", "3"),
                _deliveryListMaker("assets/Ellipse 50.png", "Suresh Khanal",
                    "9385729477", "1"),
                _deliveryListMaker(
                    "assets/Ellipse 50.png", "Radhika KC", "9384720482", "0"),
                _deliveryListMaker(
                    "assets/Ellipse 50.png", "Sonam Lama", "938239472", "4"),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _deliveryListMaker("assets/Ellipse 50.png", "Ayush Adhikari",
                    "9305839-20", "12"),
                _deliveryListMaker("assets/Ellipse 50.png", "Naresh Bhattari",
                    "9385-2000", "7"),
                _deliveryListMaker("assets/Ellipse 50.png", "Nimesh Poudel",
                    "9483-349020", "1")
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget _deliveryListMaker(String image, String name, String phno, String numb) {
  return Row(
    children: [
      RoundCheckBox(
        size: 12.0,
        onTap: (selected) {},
        checkedColor: Colors.black,
      ),
      SizedBox(
        width: 10.0,
      ),
      Image(
        image: AssetImage(image),
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            name,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(phno),
          Container(
            height: 15.0,
            width: 27.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.grey[200],
            ),
            child: Center(
                child: Text(
              numb,
              style: TextStyle(fontSize: 10.0),
            )),
          )
        ],
      )
    ],
  );
}
