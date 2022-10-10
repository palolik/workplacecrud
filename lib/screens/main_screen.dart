//import 'package:webcheck2/component/dash_home.dart';
import 'package:webcheck2/component/sidemenu.dart';
import 'package:webcheck2/component/dash_home.dart';
import 'package:flutter/material.dart';

// import 'package:flutter_svg/flutter_svg.dart';

const Color sidePannelRed = Color(0xFFF91515);
const Color sidePannelBlack = Color(0xFF421E1C);
const Color elementBg = Color(0xFFD9D9D9);
const Color bg = Color(0xFFF1EAEA);

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
        children: [
          Expanded(
            child: SideMenu(),
          ),
          Expanded(
            flex: 5,
            child:
                Home(), // class name goes here , we can call it by class only
          )
        ],
      )),
    );
  }
}
