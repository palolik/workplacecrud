import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class UpdateStudentPage extends StatefulWidget {
  final String id;
  const UpdateStudentPage({Key? key, required this.id}) : super(key: key);

  @override
  _UpdateStudentPageState createState() => _UpdateStudentPageState();
}

class _UpdateStudentPageState extends State<UpdateStudentPage> {
  final _formKey = GlobalKey<FormState>();

  // Updaing Student
  CollectionReference coachinglist = // collection name is in the veriable
      FirebaseFirestore.instance.collection('coachings');

  Future<void> updateUser(id, coaching, classes, subject, address) {
    return coachinglist
        .doc(id)
        .update({
          // first word in comma refers to the fuildname and the next one is veriable by which we will change
          'coaching': coaching,
          'class': classes,
          'subject': subject,
          'address': address
        })
        // ignore: avoid_print
        .then((value) => print("User Updated"))
        // ignore: avoid_print
        .catchError((error) => print("Failed to update user: $error"));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Update Student"),
          backgroundColor: Colors.redAccent,
        ),
        body: Form(
            key: _formKey,
            // Getting Specific Data by ID
            child: FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>(
              future: FirebaseFirestore.instance
                  .collection('coachings')
                  .doc(widget.id)
                  .get(),
              builder: (_, snapshot) {
                if (snapshot.hasError) {
                  // ignore: avoid_print
                  print('Something Went Wrong');
                }
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                var data = snapshot.data!.data();
                var coaching = data!['coaching'];
                var classes = data['class'];
                var subject = data['subject'];
                var address = data['address'];
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  child: ListView(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10.0),
                        child: TextFormField(
                          initialValue: coaching,
                          autofocus: false,
                          onChanged: (value) => coaching = value,
                          decoration: const InputDecoration(
                            labelText: 'coaching: ',
                            labelStyle: TextStyle(fontSize: 20.0),
                            border: OutlineInputBorder(),
                            errorStyle: TextStyle(
                                color: Colors.redAccent, fontSize: 15),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter coaching';
                            }
                            return null;
                          },
                        ),
                      ),
                      Container(
                        // this container updates the data to the database
                        margin: const EdgeInsets.symmetric(vertical: 10.0),
                        child: TextFormField(
                          initialValue: classes,
                          autofocus: false,
                          onChanged: (value) => classes = value,
                          decoration: const InputDecoration(
                            labelText: 'class: ',
                            labelStyle: TextStyle(fontSize: 20.0),
                            border: OutlineInputBorder(),
                            errorStyle: TextStyle(
                                color: Colors.redAccent, fontSize: 15),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter classes';
                            }
                            return null;
                          },
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10.0),
                        child: TextFormField(
                          initialValue: subject,
                          autofocus: false,
                          onChanged: (value) => subject = value,
                          decoration: const InputDecoration(
                            labelText: 'subject: ',
                            labelStyle: TextStyle(fontSize: 20.0),
                            border: OutlineInputBorder(),
                            errorStyle: TextStyle(
                                color: Colors.redAccent, fontSize: 15),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter subject';
                            }
                            return null;
                          },
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10.0),
                        child: TextFormField(
                          initialValue: address,
                          autofocus: false,
                          onChanged: (value) => address = value,
                          decoration: const InputDecoration(
                            labelText: 'address: ',
                            labelStyle: TextStyle(fontSize: 20.0),
                            border: OutlineInputBorder(),
                            errorStyle: TextStyle(
                                color: Colors.redAccent, fontSize: 15),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter address';
                            }
                            return null;
                          },
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // Validate returns true if the form is valid, otherwise false.
                              if (_formKey.currentState!.validate()) {
                                updateUser(widget.id, coaching, classes,
                                    subject, address);
                                Navigator.pop(context);
                              }
                            },
                            child: const Text(
                              'Update',
                              style: TextStyle(fontSize: 18.0),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.redAccent),
                          ),
                          ElevatedButton(
                            onPressed: () => {},
                            child: const Text(
                              'Reset',
                              style: TextStyle(fontSize: 18.0),
                            ),
                            style:
                                ElevatedButton.styleFrom(primary: Colors.red),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
            )),
      ),
    );
  }
}
