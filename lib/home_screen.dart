import 'package:flutter/material.dart';
import 'package:arijit_mukherjee/constants.dart';
import 'package:arijit_mukherjee/sections/about/about_section.dart';
import 'package:arijit_mukherjee/sections/contact/contact_section.dart';
import 'package:arijit_mukherjee/sections/feedback/feedback_section.dart';
import 'package:arijit_mukherjee/sections/recent_work/recent_work_section.dart';
import 'package:arijit_mukherjee/sections/service/service_section.dart';
import 'package:arijit_mukherjee/sections/topSection/top_section.dart';
// import 'package:scroll_to_index/scroll_to_index.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              TopSection(),

              AboutSection(),

              SizedBox(height: kDefaultPadding * 2),

              ServiceSection(),

              RecentWorkSection(),

              FeedbackSection(),

              ContactSection(),

              SizedBox(height: kDefaultPadding),

              // This SizeBox just for demo
              // SizedBox(
              //   height: 500,
              // )
            ],
          ),
        ),
      ),
    );
  }
}
