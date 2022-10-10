import 'package:flutter/material.dart';
import 'package:webcheck2/screens/main_screen.dart';

// const Color elemnt_bg = Color(0xFFD9D9D9);

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Container(
        // width: MediaQuery.of(context).size.width,
        child: GridView.count(
          crossAxisSpacing: 1,
          mainAxisSpacing: 2,
          crossAxisCount: 3,
          children: <Widget>[
            DashboardItems(
              title: "Students",
              imgUrl: 'assets/images/profile_pic.png',
              press: () {},
            ),
            DashboardItems(
              title: "Tutor",
              imgUrl: 'assets/images/profile_pic.png',
              press: () {},
            ),
            DashboardItems(
              title: "Total Earnings",
              imgUrl: 'assets/images/profile_pic.png',
              press: () {},
            ),
            DashboardItems(
              title: "Adds posted",
              imgUrl: 'assets/images/profile_pic.png',
              press: () {},
            ),
            DashboardItems(
              title: "Verified tutors",
              imgUrl: 'assets/images/profile_pic.png',
              press: () {},
            ),
            DashboardItems(
              title: "Active areas",
              imgUrl: 'assets/images/profile_pic.png',
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardItems extends StatelessWidget {
  const DashboardItems({
    Key? key,
    required this.title,
    required this.imgUrl,
    required this.press,
  }) : super(key: key);

  final String title, imgUrl;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: ImageIcon(
            AssetImage(imgUrl),
            color: Colors.pink,
            size: 200,
          ),
          color: elementBg,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 24),
        ),
      ],
    );
  }
}
