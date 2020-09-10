import 'package:flutter/material.dart';
import 'package:arijit_mukherjee/components/default_button.dart';
//import 'package:web_app/components/my_outline_button.dart';
import 'package:arijit_mukherjee/constants.dart';

import 'components/about_section_text.dart';
import 'components/about_text_with_sign.dart';
import 'components/experience_card.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AboutTextWithSign(),
              Expanded(
                child: AboutSectionText(
                  text:
                      "To work in an environment which encourages me to succeed and grow professionally where I can utilize my skills and knowledge appropriately.",
                ),
              ),
              ExperienceCard(numOfExp: "03"),
              Expanded(
                child: AboutSectionText(
                  text:
                      "Over the past few years, I have acquired relevant skills and experience in the field of Machine Learning, Flutter App Development and Web Development. I have also done Internship on the above-mentioned fields. I have had experience on Hackathon and the courses I have done in the past few years, and according to that I had done some project which I have in my GitHub Repository. I have experience in Dart, Python, Machine Learning, C/C++ and Java.",
                ),
              ),
            ],
          ),
          SizedBox(height: kDefaultPadding * 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DefaultButton(
                imageSrc: "assets/images/github.jpg",
                text: "GitHub",
                press: () {
                  const url = 'https://github.com/Arijit123Muk/master';
                  launchURL(url);
                },
              ),
              SizedBox(width: kDefaultPadding * 1.5),
              DefaultButton(
                imageSrc: "assets/images/download.png",
                text: "Download CV",
                press: () {
                  const url =
                      'https://drive.google.com/drive/folders/1kHoQKCWy4S-Lrm7XdKNoKzIZ-OHEuRQh?usp=sharing';
                  launchURL(url);
                },
              ),
              SizedBox(width: kDefaultPadding * 1.5),
              DefaultButton(
                imageSrc: "assets/images/download1.png",
                text: "Certificates",
                press: () {
                  const url =
                      'https://drive.google.com/drive/folders/1udfGLePKSWGRQhqDVlhdZmB3wUYRx-bW?usp=sharing';
                  launchURL(url);
                },
              )
            ],
          ),
        ],
      ),
    );
  }

  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceWebView: true);
    } else {
      throw 'Could not launch $url';
    }
  }
}
