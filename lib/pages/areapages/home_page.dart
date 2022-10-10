//
// this is the working home page
//
import 'package:flutter/material.dart';
import 'package:webcheck2/pages/coachingpages/list_coaching_page.dart';
import 'package:webcheck2/pages/coachingpages/add_coaching_page.dart';

class HomePages extends StatefulWidget {
  HomePages({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Coaching Database'),
            ElevatedButton(
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddStudentPage(),
                  ),
                )
              },
              child: Text('Add', style: TextStyle(fontSize: 20.0)),
              style: ElevatedButton.styleFrom(primary: Colors.red),
            )
          ],
        ),
        backgroundColor: Colors.redAccent,
      ),
      body: ListStudentPage(),
    );
  }
}
