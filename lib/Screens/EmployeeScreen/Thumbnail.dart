import 'dart:html';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:khaja_ghar/Screens/EmployeeScreen/employeeScreenController.dart';
import 'package:khaja_ghar/Screens/EmployeeScreen/personalInformation.dart';
import 'package:khaja_ghar/constants/components.dart';

import 'package:provider/provider.dart';

// ignore: must_be_immutable
class ThumbnailWidget extends StatefulWidget {
  String imgPath;
  String pText;

  ThumbnailWidget({
    @required this.imgPath,
    this.pText,
    Key key,
  }) : super(key: key);

  @override
  _ThumbnailWidgetState createState() => _ThumbnailWidgetState();
}

class _ThumbnailWidgetState extends State<ThumbnailWidget> {
  EmployeeScreenController _employeeScreenController;

  var picked;
  var option1Text;
  File theChosenImg;
  Uint8List uploadedImage;
  FileReader reader2 = FileReader();

  _startFilePicker() async {
    InputElement uploadInput = FileUploadInputElement();
    uploadInput.click();

    uploadInput.onChange.listen((e) {
      // read file content as dataURL
      final files = uploadInput.files;
      if (files.length == 1) {
        final file = files[0];
        FileReader reader = FileReader();

        reader.onLoadEnd.listen((e) {
          setState(() {
            uploadedImage = reader.result;
            _employeeScreenController.aImage = uploadedImage;
            theChosenImg = files[0];
          });
        });
        reader.readAsArrayBuffer(file);
        reader2.readAsDataUrl(file);
        print(uploadedImage);

        //print(theChosenImg);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    _employeeScreenController = Provider.of<EmployeeScreenController>(context);
    return Expanded(
      child: Card(
        child: Container(
          padding: EdgeInsets.only(bottom: 50.0),
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
                        onpressed: () {
                          //_employeeScreenController.getImage();
                          _startFilePicker();
                        },
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
                    uploadedImage == null
                        ? Container(
                            child: Center(
                              child: Stack(
                                children: [
                                  Image.asset(widget.imgPath),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 60.0, top: 90.0),
                                    child: Text(
                                      widget.pText,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        : Center(
                            child: Container(
                              width: 190,
                              height: 190,
                              child: Center(
                                child: Image.memory(uploadedImage),
                              ),
                            ),
                          )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
