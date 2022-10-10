//
// this is the working home page
//
import 'package:flutter/material.dart';
import 'package:webcheck2/pages/studentspages/list_student_page.dart';
import 'package:webcheck2/pages/studentspages/add_student_page.dart';

class StudentHome extends StatefulWidget {
  StudentHome({Key? key}) : super(key: key);

  @override
  StudenthomeState createState() => StudenthomeState();
}

class StudenthomeState extends State<StudentHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Student Database'),
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
