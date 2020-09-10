import 'package:flutter/material.dart';
import 'package:arijit_mukherjee/models/Feedback.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants.dart';

class FeedbackCard extends StatefulWidget {
  const FeedbackCard({
    Key key,
    this.index,
  }) : super(key: key);

  final int index;

  @override
  _FeedbackCardState createState() => _FeedbackCardState();
}

class _FeedbackCardState extends State<FeedbackCard> {
  Duration duration = Duration(milliseconds: 200);
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        decision(widget.index);
      },
      hoverColor: Colors.transparent,
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: duration,
        margin: EdgeInsets.only(top: kDefaultPadding * 3),
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        height: 350,
        width: 350,
        decoration: BoxDecoration(
          color: feedbacks[widget.index].color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isHover) kDefaultCardShadow],
        ),
        child: Column(
          children: [
            Transform.translate(
              offset: Offset(0, -55),
              child: AnimatedContainer(
                duration: duration,
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 10),
                  boxShadow: [if (!isHover) kDefaultCardShadow],
                  image: DecorationImage(
                    image: AssetImage(feedbacks[widget.index].userPic),
                  ),
                ),
              ),
            ),
            Text(
              feedbacks[widget.index].review,
              style: TextStyle(
                color: kTextColor,
                fontSize: 18,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.italic,
                height: 1.5,
              ),
            ),
            SizedBox(height: kDefaultPadding * 2),
            Text(
              feedbacks[widget.index].name,
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }

  void decision(index) {
    print(index);
    if (index == 0) {
      const url =
          'https://drive.google.com/drive/folders/1WRgtrS_maYufES2l1X4BvmLc5Bp_oEX3?usp=sharing';
      launchURL(url);
    } else if (index == 1) {
      const url =
          'https://drive.google.com/drive/folders/1kVSerzoDGP3hS2ilT9Tz2kW7hCwZmUjn?usp=sharing';
      launchURL(url);
    } else
      print('Error');
  }

  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceWebView: true);
    } else {
      throw 'Could not launch $url';
    }
  }
}
