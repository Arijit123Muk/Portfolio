class RecentWork {
  final String image, category, title;
  final int id;

  RecentWork({this.id, this.image, this.category, this.title});
}

// Demo List of my works
List<RecentWork> recentWorks = [
  RecentWork(
    id: 1,
    title: "Computers are able to see, hear and learn.  Welcome to the future",
    category: "Machine Learning Expert",
    image: "assets/images/work_1.png",
  ),
  RecentWork(
    id: 2,
    title: "Websites should look good from the inside and out.",
    category: "Web Developer",
    image: "assets/images/work_2.png",
  ),
  RecentWork(
    id: 3,
    title:
        "Learn from yesterday, live for today, hope for tomorrow. The important thing is not to stop questioning",
    category: "Flutter App Developer",
    image: "assets/images/work_3.png",
  ),
  // RecentWork(
  //   id: 4,
  //   title: "New & Fresh Looking Portfolio indeed at the end",
  //   category: "Graphic Design",
  //   image: "assets/images/work_4.png",
  // ),
];
