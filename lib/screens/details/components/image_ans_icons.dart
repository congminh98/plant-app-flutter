import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/details/components/icon_card.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
      child: SizedBox(
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
                    Spacer(),
                    IconCard(icon: "assets/icons/sun.svg"),
                    IconCard(icon: "assets/icons/icon_2.svg"),
                    IconCard(icon: "assets/icons/icon_3.svg"),
                    IconCard(icon: "assets/icons/icon_4.svg"),
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
                  ),
                  BoxShadow(
                    offset: Offset(-15, -15),
                    blurRadius: 20,
                    color: Colors.white,
                  ),
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
    );
  }
}
