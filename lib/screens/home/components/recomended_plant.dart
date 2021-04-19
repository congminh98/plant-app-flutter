import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class RecomendsPlants extends StatelessWidget {
  const RecomendsPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(
              left: kDefaultPadding,
              top: kDefaultPadding / 2,
              bottom: kDefaultPadding * 0.25,
            ),
            width: size.width * 0.4,
            child: Column(
              children: [],
            ),
          ),
        ],
      ),
    );
  }
}
