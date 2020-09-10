import 'package:flutter/material.dart';

class Feedback {
  final String name, review, userPic;
  final int id;
  final Color color;

  Feedback({this.name, this.review, this.userPic, this.id, this.color});
}

// List of demo feedbacks
List<Feedback> feedbacks = [
  Feedback(
    id: 1,
    name: "KUSHAGRA NALWAYA",
    review:
        'Mr. Arijit Mukherjee has successfully completed his Intership from July 2020 to August 2020',
    userPic: "assets/images/people1.png",
    color: Color(0xFFFFF3DD),
  ),
  Feedback(
    id: 2,
    name: "Raktima Sengupta",
    review:
        'Your dedication & work ethic are very impressive and show exceptional discipline and dedication to the organisation.',
    userPic: "assets/images/people2.png",
    color: Color(0xFFd1eaa3),
  ),
  // Feedback(
  //   id: 3,
  //   name: "Ronald Thompson",
  //   review: review,
  //   userPic: "assets/images/people.png",
  //   color: Color(0xFFFFE0E0),
  // ),
];
