import 'package:flutter/material.dart';
import 'package:arijit_mukherjee/components/section_title.dart';
import 'package:arijit_mukherjee/constants.dart';
import 'package:arijit_mukherjee/models/Service.dart';

import 'components/service_card.dart';

class ServiceSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          SectionTitle(
            color: Color(0xFFFF0000),
            title: "Service Offerings",
            subTitle: "My Strength",
          ),
          Container(
            // width: MediaQuery.of(context).size.width * 0.70,
            margin: EdgeInsets.only(right: 100.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                  services.length, (index) => ServiceCard(index: index)),
            ),
          )
        ],
      ),
    );
  }
}
