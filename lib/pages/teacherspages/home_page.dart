//
// this is the working home page
//
import 'package:flutter/material.dart';
import 'package:webcheck2/pages/teacherspages/add_teacher_page.dart';
import 'package:webcheck2/pages/teacherspages/list_teacher_page.dart';

class TeacherHome extends StatefulWidget {
  TeacherHome({Key? key}) : super(key: key);

  @override
  StudenthomeState createState() => StudenthomeState();
}

class StudenthomeState extends State<TeacherHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Teachers Database'),
            ElevatedButton(
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddTeachersPage(),
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
      body: ListTeacherPage(),
    );
  }
}
