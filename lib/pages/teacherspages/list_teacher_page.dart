import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:webcheck2/pages/teacherspages/update_teacher_page.dart';
import 'package:webcheck2/pages/teacherspages/add_teacher_page.dart';

class AddTeacherPage extends StatefulWidget {
  const AddTeacherPage({super.key});

  @override
  State<AddTeacherPage> createState() => _addstudentState();
}

class _addstudentState extends State<AddTeacherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AddTeacherPage(),
    );
  }
}

class ListTeacherPage extends StatefulWidget {
  const ListTeacherPage({Key? key}) : super(key: key);

  @override
  _ListStudentPageState createState() => _ListStudentPageState();
}

class _ListStudentPageState extends State<ListTeacherPage> {
  final Stream<QuerySnapshot> studentsStream = FirebaseFirestore.instance
      .collection('teachers')
      .snapshots(); //the collection name goes here

  // For Deleting User
  CollectionReference coachinglist = FirebaseFirestore.instance
      .collection('teachers'); // collection name goes here
  Future<void> deleteUser(id) {
    // print("User Deleted $id");
    return coachinglist
        .doc(id)
        .delete()
        // ignore: avoid_print
        .then((value) => print('Teacher data Deleted'))
        // ignore: avoid_print
        .catchError((error) => print('Failed to Delete user: $error'));
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: studentsStream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            // ignore: avoid_print
            print('Something went Wrong');
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          final List storedocs = [];
          snapshot.data!.docs.map((DocumentSnapshot document) {
            Map a = document.data() as Map<String, dynamic>;
            storedocs.add(a);
            a['id'] = document.id; // calls by the id of the data table
          }).toList();

          return Material(
            child: Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 12.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Table(
                  border: TableBorder.all(),
                  columnWidths: const <int, TableColumnWidth>{
                    1: FixedColumnWidth(140),
                  },
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  children: [
                    TableRow(
                      // refers to the row  just as html
                      children: [
                        TableCell(
                          // refers to the cell of  that row
                          child: Container(
                            color: Colors.redAccent,
                            child: const Center(
                              child: Text(
                                'Name',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          // refers to the cell of  that row
                          child: Container(
                            color: Colors.redAccent,
                            child: const Center(
                              child: Text(
                                'User name',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          // refers to the cell of  that row
                          child: Container(
                            color: Colors.redAccent,
                            child: const Center(
                              child: Text(
                                'Phone',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          // refers to the cell of  that row
                          child: Container(
                            color: Colors.redAccent,
                            child: const Center(
                              child: Text(
                                'Email',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          // refers to the cell of  that row
                          child: Container(
                            color: Colors.redAccent,
                            child: const Center(
                              child: Text(
                                'Gender',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          // refers to the cell of  that row
                          child: Container(
                            color: Colors.redAccent,
                            child: const Center(
                              child: Text(
                                'age',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          // refers to the cell of  that row
                          child: Container(
                            color: Colors.redAccent,
                            child: const Center(
                              child: Text(
                                'Religion',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          // refers to the cell of  that row
                          child: Container(
                            color: Colors.redAccent,
                            child: const Center(
                              child: Text(
                                'Living city',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          // refers to the cell of  that row
                          child: Container(
                            color: Colors.redAccent,
                            child: const Center(
                              child: Text(
                                'University',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          // refers to the cell of  that row
                          child: Container(
                            color: Colors.redAccent,
                            child: const Center(
                              child: Text(
                                'Study Subject',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          // refers to the cell of  that row
                          child: Container(
                            color: Colors.redAccent,
                            child: const Center(
                              child: Text(
                                'Teaching City',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          // refers to the cell of  that row
                          child: Container(
                            color: Colors.redAccent,
                            child: const Center(
                              child: Text(
                                'Teaching areas',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          // refers to the cell of  that row
                          child: Container(
                            color: Colors.redAccent,
                            child: const Center(
                              child: Text(
                                'Experience',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          // refers to the cell of  that row
                          child: Container(
                            color: Colors.redAccent,
                            child: const Center(
                              child: Text(
                                'Teaching subject',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          // extra added column
                          child: Container(
                            color: Colors.redAccent,
                            child: const Center(
                              child: Text(
                                'Teaching days',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.redAccent,
                            child: const Center(
                              child: Text(
                                'Asking salary',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.redAccent,
                            child: const Center(
                              child: Text(
                                'Teaching Class',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.redAccent,
                            child: const Center(
                              child: Text(
                                'Action',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ), //the first header row ends here
                    for (var i = 0; i < storedocs.length; i++) ...[
                      // it sets the number of rows , the more data is added the more rows are shown
                      TableRow(
                        // value boxes starts with this one
                        children: [
                          TableCell(
                            child: Center(
                                child: Text(storedocs[i]['name'], //
                                    style: const TextStyle(fontSize: 10.0))),
                          ),
                          TableCell(
                            child: Center(
                                child: Text(storedocs[i]['user name'], //
                                    style: const TextStyle(fontSize: 10.0))),
                          ),
                          TableCell(
                            child: Center(
                                child: Text(storedocs[i]['phone'], //
                                    style: const TextStyle(fontSize: 10.0))),
                          ),
                          TableCell(
                            child: Center(
                                child: Text(storedocs[i]['email'], //
                                    style: const TextStyle(fontSize: 10.0))),
                          ),
                          TableCell(
                            child: Center(
                                child: Text(storedocs[i]['gender'], //
                                    style: const TextStyle(fontSize: 10.0))),
                          ),
                          TableCell(
                            child: Center(
                                child: Text(storedocs[i]['age'], //
                                    style: const TextStyle(fontSize: 10.0))),
                          ),
                          TableCell(
                            child: Center(
                                child: Text(storedocs[i]['religion'], //
                                    style: const TextStyle(fontSize: 10.0))),
                          ),
                          TableCell(
                            child: Center(
                                child: Text(storedocs[i]['city'], //
                                    style: const TextStyle(fontSize: 10.0))),
                          ),
                          TableCell(
                            child: Center(
                                child: Text(storedocs[i]['university'],
                                    style: const TextStyle(fontSize: 10.0))),
                          ),
                          TableCell(
                            child: Center(
                                child: Text(storedocs[i]['study subject'],
                                    style: const TextStyle(fontSize: 10.0))),
                          ),
                          TableCell(
                            child: Center(
                                child: Text(storedocs[i]['teaching-city'],
                                    style: const TextStyle(fontSize: 10.0))),
                          ),
                          TableCell(
                            child: Center(
                                child: Text(storedocs[i]['teaching-areas'],
                                    style: const TextStyle(fontSize: 10.0))),
                          ),
                          TableCell(
                            child: Center(
                                child: Text(storedocs[i]['experience'], //
                                    style: const TextStyle(fontSize: 10.0))),
                          ),
                          TableCell(
                            child: Center(
                                child: Text(storedocs[i]['subject-teaching'], //
                                    style: const TextStyle(fontSize: 10.0))),
                          ),
                          TableCell(
                            child: Center(
                                child: Text(storedocs[i]['teaching-days'], //
                                    style: const TextStyle(fontSize: 10.0))),
                          ),
                          TableCell(
                            child: Center(
                                child: Text(storedocs[i]['asking salary'], //
                                    style: const TextStyle(fontSize: 10.0))),
                          ),
                          TableCell(
                            child: Center(
                                child: Text(storedocs[i]['target string'], //
                                    style: const TextStyle(fontSize: 10.0))),
                          ),
                          TableCell(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  onPressed: () => {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => UpdateTeacherPage(
                                            id: storedocs[i]['id']),
                                      ),
                                    )
                                  },
                                  icon: const Icon(
                                    Icons.edit,
                                    color: Colors.red,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () => {
                                    deleteUser(storedocs[i]['id'])
                                  }, // this one delets the user from the datatable
                                  icon: const Icon(
                                    Icons.delete,
                                    color: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ],
                ),
              ),
            ),
          );
        });
  }
}
