import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:arijit_mukherjee/constants.dart';

import 'components/logo_blur_box.dart';
// import 'components/menu.dart';
import 'components/person_pic.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      constraints: BoxConstraints(maxHeight: 900, minHeight: 700),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/background.jpg"),
        ),
      ),
      child: Container(
        padding: EdgeInsets.only(right: 100.0, left: 100.0),
        width: MediaQuery.of(context).size.width * 0.80,
        margin: EdgeInsets.only(top: kDefaultPadding),
        child: Stack(
          children: [
            LogoAndBlurBox(size: size),
            Positioned(
              bottom: 0,
              right: 0,
              child: PersonPic(),
            ),
            // Positioned(
            //   bottom: 0,
            //   child: Menu(),
            // ),
          ],
        ),
      ),
    );
  }
}
