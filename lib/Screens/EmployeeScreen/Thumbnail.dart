import 'package:flutter/material.dart';
import 'package:khaja_ghar/Screens/EmployeeScreen/personalInformation.dart';
import 'package:khaja_ghar/constants/components.dart';

class ThumbnailWidget extends StatelessWidget {
  String imgPath;
  String pText;
  ThumbnailWidget({
    @required this.imgPath,
    this.pText,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.only(
            bottom: 50.0,
          ),
          child: Container(
            width: 468.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InsideTableComponents(headingText: "Thumbnail"),
                SizedBox(
                  height: 30.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 22.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Center(
                        child: BtnClass(
                          onpressed: () {},
                          bColor: Colors.grey,
                          bText: "Upload Image",
                          bImage: Image(
                            image: AssetImage('assets/camera.png'),
                          ),
                          bTextColor: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 22.0,
                      ),
                      Text(
                        "Image Preview",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      Center(
                        child: Stack(
                          children: [
                            Image.asset(
                              imgPath,
                              width: 190,
                              height: 190,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 60.0, top: 90.0),
                              child: Text(
                                pText,
                              ),
                            ),
                          ],
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
    );
  }
}
