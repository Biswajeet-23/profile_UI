import 'package:flutter/material.dart';
import 'package:task_ui_building/size_config.dart';
import 'package:task_ui_building/theme/pallete.dart';

class NumbersWidget extends StatelessWidget {
  const NumbersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        buildButton(context, '2', 'Posts', defaultSize),
        SizedBox(width: defaultSize * 1.4,),
        Container(
          margin: EdgeInsets.only(top: defaultSize),
          width: defaultSize * 0.2,
          height: defaultSize * 4,
          color: Colors.black,
        ),
        SizedBox(width: defaultSize * 1.4,),
        buildButton(context, '1', 'Followers', defaultSize),
        SizedBox(width: defaultSize * 1.4,),
        Container(
          margin: EdgeInsets.only(top: defaultSize),
          width: defaultSize * 0.2,
          height: defaultSize * 4,
          color: Colors.black,
        ),
        SizedBox(width: defaultSize * 1.4,),
        buildButton(context, '2', 'Following', defaultSize),
      ],
    );
  }

  Widget buildButton(BuildContext context, String value, String key, double defaultSize) {
    return MaterialButton(
      onPressed: () {},
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            value,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Pallete.whiteColor,
              fontSize: defaultSize * 1.9,
            ),
          ),
          SizedBox(
            height: defaultSize * 0.6,
          ),
          Text(
            key,
            style: TextStyle(
              fontSize: defaultSize * 1.5,
              color: Pallete.whiteColor,
            ),
          )
        ],
      ),
    );
  }

}
