import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/featured_plant.dart';
import 'package:plant_app/screens/home/components/header_with_search_box.dart';
import 'package:plant_app/screens/home/components/recomended_plant.dart';
import 'package:plant_app/screens/home/components/title_with_more_btn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(text: "Recomended", press: () {}),
          RecomendsPlants(),
          TitleWithMoreBtn(text: "Featured Plants", press: () {}),
          SizedBox(height: 2),
          FeaturePlants(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
