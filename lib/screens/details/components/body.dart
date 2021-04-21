import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.8,
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: kDefaultPadding * 2,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          padding: EdgeInsets.symmetric(
                            horizontal: kDefaultPadding,
                          ),
                          icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      // Spacer(),
                      Container(
                        height: 60,
                        width: 62,
                        decoration: BoxDecoration(
                          color: Colors.red,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: size.height * 0.8,
                width: size.width * 0.75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    bottomLeft: Radius.circular(60),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 60,
                      color: kPrimaryColor.withOpacity(0.29),
                    )
                  ],
                  image: DecorationImage(
                    alignment: Alignment.topLeft,
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/img.png"),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
