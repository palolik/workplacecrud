//import 'package:admin_dash/screens/area_management.dart';
//import 'package:admin_dash/screens/coaching_database.dart';
//import 'package:admin_dash/screens/earnings_database.dart';
import 'package:webcheck2/screens/main_screen.dart';
import 'package:webcheck2/pages/coachingpages/home_page.dart';
import 'package:webcheck2/pages/studentspages/home_page.dart';
import 'package:webcheck2/pages/teacherspages/home_page.dart';

//import 'package:admin_dash/screens/sheet_datbase.dart';
// import 'package:admin_dash/screens/student_database.dart';
// import 'package:admin_dash/screens/tutor_database.dart';
// import 'package:admin_dash/screens/verification_requests.dart';

import 'package:flutter/material.dart';

const Color bg = Color(0xFFF1EAEA);

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: sidePannelRed,
      child: SingleChildScrollView(
        child: Column(
          // dashboard left colum menu items

          children: [
            DrawerListTile(
              title: "Home",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MainScreen()),
                );
              },
            ),
            DrawerListTile(
              title: "Area management",
              press: () {
                //    Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //       builder: (context) => const AreaManagement()),
                //   );
              },
            ),
            DrawerListTile(
              title: "Student database",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StudentHome()),
                );
              },
            ),
            DrawerListTile(
              title: "Tutor database",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TeacherHome()),
                );
              },
            ),
            DrawerListTile(
              title: "Sheet database",
              press: () {
                //        Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //             builder: (context) => const SheetDatabase()),
                //        );
              },
            ),
            DrawerListTile(
              title: "Coaching database",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePages()),
                );
              },
            ),
            DrawerListTile(
              title: "",
              press: () {},
            ),
            DrawerListTile(
              title: "Earnings",
              press: () {
                //        Navigator.push(
                //          context,
                //          MaterialPageRoute(
                //              builder: (context) => const EarningsDatabase()),
                //        );
              },
            ),
            DrawerListTile(
              title: "Verification requests",
              press: () {
                //        Navigator.push(
                //          context,
                //          MaterialPageRoute(
                //              builder: (context) => const VerificationRequests()),
                //        );
              },
            ),
            DrawerListTile(
              title: "Notifications",
              press: () {},
            ),
            DrawerListTile(
              title: "Add manager",
              press: () {},
            ),
            DrawerListTile(
              title: "",
              press: () {},
            ),
            DrawerListTile(
              title: "Logout",
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      // leading: SvgPicture.asset(
      //   svgSrc,
      //   color: Colors.white,
      //   height: 16,
      // ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
