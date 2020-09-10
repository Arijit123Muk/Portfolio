import 'package:flutter/material.dart';
import 'package:arijit_mukherjee/components/default_button.dart';
import 'package:arijit_mukherjee/components/section_title.dart';
import 'package:arijit_mukherjee/constants.dart';

import 'package:arijit_mukherjee/models/ContactMe.dart' as cotme;
import 'package:url_launcher/url_launcher.dart';

import 'components/socal_card.dart';

class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // this height only for demo
      // height: 500,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color(0xFFE8F0F9),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/bg3.jpg"), //bg_img_2.png
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: kDefaultPadding * 2.5),
          SectionTitle(
            title: "Contact Me",
            subTitle: "For Project Inquiry and Information",
            color: Color(0xFF07E24A),
          ),
          ContactBox()
        ],
      ),
    );
  }
}

class ContactBox extends StatelessWidget {
  const ContactBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 1110),
      margin: EdgeInsets.only(top: kDefaultPadding * 2),
      padding: EdgeInsets.all(kDefaultPadding * 3),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SocalCard(
                color: Color(0xFFD9FFFC),
                iconSrc: "assets/images/linkindin.png",
                name: 'Arijit Mukherjee',
                press: () {
                  decision(
                      'https://www.linkedin.com/in/arijit-mukherjee-065091190/');
                },
              ),
              SocalCard(
                color: Color(0xFFb2ebf2),
                iconSrc: "assets/images/messanger.png",
                name: 'Arijit Mukherjee',
                press: () {
                  decision('https://m.me/arijit.mukherjee.3914');
                },
              ),
              SocalCard(
                color: Color(0xFFE8F0F9),
                iconSrc: "assets/images/telegram.png",
                name: 'Arijit Mukherjee',
                press: () {
                  decision('https://t.me/anosvoldi_goad');
                },
              ),
            ],
          ),
          SizedBox(height: kDefaultPadding * 2),
          ContactForm(),
        ],
      ),
    );
  }

  void decision(url) {
    try {
      launchURL(url);
    } catch (e) {
      print(e);
    }
  }

  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceWebView: true);
    } else {
      throw 'Could not launch $url';
    }
  }
}

class ContactForm extends StatelessWidget {
  const ContactForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Wrap(
        spacing: kDefaultPadding * 2.5,
        runSpacing: kDefaultPadding * 1.5,
        children: [
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {
                cotme.name = value;
              },
              decoration: InputDecoration(
                labelText: "Your Name",
                hintText: "Enter Your Name",
              ),
            ),
          ),
          // SizedBox(
          //   width: 470,
          //   child: TextFormField(
          //     onChanged: (value) {
          //       cotme.email = value;
          //     },
          //     decoration: InputDecoration(
          //       labelText: "Email Address",
          //       hintText: "Enter your email address",
          //     ),
          //   ),
          // ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {
                cotme.sub = value;
              },
              decoration: InputDecoration(
                labelText: "Project Type",
                hintText: "Select Project Type",
              ),
            ),
          ),
          // SizedBox(
          //   width: 470,
          //   child: TextFormField(
          //     onChanged: (value) {},
          //     decoration: InputDecoration(
          //       labelText: "Project Budget",
          //       hintText: "Select Project Budget",
          //     ),
          //   ),
          // ),
          SizedBox(
            // height: 300,
            // TextField by default cover the height, i tryed to fix this problem but i cant
            child: TextFormField(
              onChanged: (value) {
                cotme.body = value;
              },
              decoration: InputDecoration(
                labelText: "Description",
                hintText: "Write some description",
              ),
            ),
          ),
          SizedBox(height: kDefaultPadding * 2),
          Center(
            child: FittedBox(
              child: DefaultButton(
                imageSrc: "assets/images/contact_icon.png",
                text: "Contact Me!",
                press: () {
                  if (cotme.name != '' &&
                      cotme.sub != '' &&
                      cotme.body != '') //cotme.email != '' &&
                    cotme.send_email(cotme.name, cotme.sub, cotme.body);
                  else
                    print('ERROR');
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
