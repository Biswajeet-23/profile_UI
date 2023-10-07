import 'package:flutter/material.dart';
import 'package:task_ui_building/constants/assets_constants.dart';
import 'package:task_ui_building/size_config.dart';
import 'package:task_ui_building/widgets/custom_shape_widget.dart';
import 'package:task_ui_building/widgets/numbers_widget.dart';

import '../../theme/pallete.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Column(
      children: <Widget>[
        SizedBox(
          height: defaultSize * 26,
          child: Stack(
            children: <Widget>[
              ClipPath(
                child: Container(
                  height: defaultSize * 22,
                  color: Pallete.blueColor,
                ),
                clipper: CustomShape(),
              ),
              Center(
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: defaultSize * 2),
                      height: defaultSize * 16,
                      width: defaultSize * 16,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(AssetsConstants.profilePic),
                          )),
                    ),
                    SizedBox(
                      height: defaultSize * 2,
                    ),
                    Text(
                      "Shane Mathias",
                      style: TextStyle(
                          fontSize: defaultSize * 2.2,
                          fontWeight: FontWeight.bold,
                          color: Pallete.whiteColor),
                    ),
                    SizedBox(
                      height: defaultSize * 1,
                    ),
                    Text(
                      "Co founder",
                      style: TextStyle(
                          fontSize: defaultSize * 1.7,
                          fontStyle: FontStyle.italic,
                          color: Pallete.whiteColor),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: defaultSize * 1, right: defaultSize * 2),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Chip(
                    label: Text(
                      'Following',
                      style: TextStyle(
                        color: Pallete.whiteColor,
                        fontSize: defaultSize * 1.5,
                      ),
                    ),
                    labelPadding: EdgeInsets.all(defaultSize * 0.2),
                    padding: EdgeInsets.fromLTRB(
                        defaultSize * 1.2,
                        defaultSize * 0.8,
                        defaultSize * 1.2,
                        defaultSize * 0.8),
                    backgroundColor: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            circleImage(AssetsConstants.pic, defaultSize, 'Snowy'),
            const SizedBox(
              width: 12,
            ),
            circleImage(AssetsConstants.pic2, defaultSize, 'Sandy'),
            const SizedBox(
              width: 12,
            ),
          ],
        ),
        SizedBox(
          height: defaultSize * 2,
        ),
        NumbersWidget(),
        SizedBox(
          height: defaultSize * 3,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  'Posts',
                  style: TextStyle(
                    color: Pallete.whiteColor,
                    fontSize: defaultSize * 1.7,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: defaultSize),
                  width: defaultSize * 4.5, // Adjust the width of the line indicator
                  height: defaultSize * 0.2, // Adjust the height of the line indicator
                  color: Pallete.blueColor,
                )
              ],
            ),
            SizedBox(width: defaultSize * 4),
            Column(
              children: <Widget>[
                Text(
                  'Stamp Book',
                  style: TextStyle(
                    color: Pallete.whiteColor,
                    fontSize: defaultSize * 1.7,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: defaultSize),
                  width: defaultSize * 4, // Adjust the width of the line indicator
                  height: 1, // Adjust the height of the line indicator
                )
              ],
            ),
            SizedBox(width: defaultSize * 4),
            Column(
              children: <Widget>[
                Text(
                  'Community',
                  style: TextStyle(
                    color: Pallete.whiteColor,
                    fontSize: defaultSize * 1.7,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: defaultSize),
                  width: defaultSize * 4, // Adjust the width of the line indicator
                  height: 1, // Adjust the height of the line indicator
                )
              ],
            ),
          ],
        ),
        SizedBox(height: 10,),
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: defaultSize * 1.5, right: defaultSize * 0.5),
                child: Image.asset(AssetsConstants.pic2),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: defaultSize * 0.5, right: defaultSize * 1.5),
                child: Image.asset(AssetsConstants.pic3),
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget circleImage(String image, double defaultSize, String text) => Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: defaultSize * 3,
              left: defaultSize * 3,
            ),
            height: defaultSize * 5.5,
            width: defaultSize * 5.5,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(image),
                )),
          ),
          Container(
            margin: EdgeInsets.only(
              top: defaultSize,
              left: defaultSize * 3,
            ), // Add a top margin to separate the image and text
            child: Text(
              text,
              style: TextStyle(
                color: Pallete.whiteColor,
                fontSize: defaultSize * 1.5,
              ),
              textAlign: TextAlign.center, // Center-align the text horizontally
            ),
          ),
        ],
      );
}
