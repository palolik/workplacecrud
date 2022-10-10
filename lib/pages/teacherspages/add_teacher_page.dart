import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:webcheck2/pages/teacherspages/list_teacher_page.dart';

class AddTeachersPage extends StatefulWidget {
  AddTeachersPage({Key? key}) : super(key: key);

  @override
  _AddStudentPageState createState() => _AddStudentPageState();
}

class _AddStudentPageState extends State<AddTeachersPage> {
  final _formKey = GlobalKey<FormState>();

  var name = "";
  var username = "";
  var phone = "";
  var email = "";
  var gender = "";
  var age = "";
  var religion = "";
  var city = "";
  var university = "";
  var studysubject = "";
  var teachingcity = "";
  var teachingareas = "";
  var experience = "";
  var subjectteaching = "";
  var teachingdays = "";
  var askingsalary = "";
  var targetstring = "";
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final nameController = TextEditingController();
  final usernameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final genderController = TextEditingController();
  final ageController = TextEditingController();
  final religionController = TextEditingController();
  final cityController = TextEditingController();
  final universityController = TextEditingController();
  final studysubjectController = TextEditingController();
  final teachingcityController = TextEditingController();
  final teachingareasController = TextEditingController();
  final experienceController = TextEditingController();
  final subjectteachingController = TextEditingController();
  final teachingdaysController = TextEditingController();
  final askingsalaryController = TextEditingController();
  final targetstringController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    nameController.dispose();
    usernameController.dispose();
    phoneController.dispose();
    emailController.dispose();
    genderController.dispose();
    ageController.dispose();
    religionController.dispose();
    cityController.dispose();
    universityController.dispose();
    studysubjectController.dispose();
    teachingcityController.dispose();
    teachingareasController.dispose();
    experienceController.dispose();
    subjectteachingController.dispose();
    teachingdaysController.dispose();
    askingsalaryController.dispose();
    targetstringController.dispose();

    super.dispose();
  }

  clearText() {
    nameController.clear();
    usernameController.clear();
    phoneController.clear();
    emailController.clear();
    genderController.clear();
    ageController.clear();
    religionController.clear();
    cityController.clear();
    universityController.clear();
    studysubjectController.clear();
    teachingcityController.clear();
    teachingareasController.clear();
    experienceController.clear();
    subjectteachingController.clear();
    teachingdaysController.clear();
    askingsalaryController.clear();
    targetstringController.clear();
  }

  // Adding Student
  CollectionReference teachers =
      FirebaseFirestore.instance.collection('teachers');

  Future<void> addUser() {
    return teachers
        .add({
          'name': name,
          'user name': username,
          'phone': phone,
          'email': email,
          'gender': gender,
          'age': age,
          'religion': religion,
          'city': city,
          'university': university,
          'study subject': studysubject,
          'teaching-city': teachingcity,
          'teaching-areas': teachingareas,
          'experience': experience,
          'subject-teaching': subjectteaching,
          'teaching-days': teachingdays,
          'asking salary': askingsalary,
          'target string': targetstring,
        })
        .then((value) => print('User Added'))
        .catchError((error) => print('Failed to Add user: $error'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add New Teacher"),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: ListView(
            children: [
              Container(
                // this container is the value box for taking inputs
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'Name: ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: nameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Name';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                // this container is the value box for taking inputs
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'User Name: ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: usernameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter User Name';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                // this container is the value box for taking inputs
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'Phone: ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: phoneController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Phone number';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                // this container is the value box for taking inputs
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'Email: ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter your email';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                // this container is the value box for taking inputs
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'Gender: ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: genderController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Gender';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                // this container is the value box for taking inputs
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'Age: ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: ageController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter gender';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                // this container is the value box for taking inputs
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'Religion : ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: religionController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter City';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'City: ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: cityController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Address';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'University: ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: universityController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Religion';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'Subject of studing : ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: studysubjectController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Age';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'Subject of studing : ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: studysubjectController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Age';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'Subject of studing : ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: studysubjectController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Age';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'Subject of studing : ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: studysubjectController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Age';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'Subject of studing : ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: studysubjectController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Age';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'Subject of studing : ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: teachingcityController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Age';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'Subject of studing : ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: teachingareasController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Age';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'Subject of studing : ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: experienceController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Age';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'Subject of studing : ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: subjectteachingController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Age';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'Subject of studing : ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: teachingdaysController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Age';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'Subject of studing : ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: askingsalaryController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Age';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'Subject of studing : ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: targetstringController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Age';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Validate returns true if the form is valid, otherwise false.
                        if (_formKey.currentState!.validate()) {
                          setState(() {
                            name = nameController.text;
                            username = usernameController.text;
                            phone = phoneController.text;
                            email = emailController.text;
                            gender = genderController.text;
                            age = ageController.text;
                            religion = religionController.text;
                            city = cityController.text;
                            university = universityController.text;
                            studysubject = studysubjectController.text;
                            teachingcity = teachingcityController.text;
                            teachingareas = teachingareasController.text;
                            experience = experienceController.text;
                            subjectteaching = subjectteachingController.text;
                            teachingdays = teachingdaysController.text;
                            askingsalary = askingsalaryController.text;
                            targetstring = targetstringController.text;
                            addUser();
                            clearText();
                          });
                        }
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ListTeacherPage()));
                      },
                      child: Text(
                        'Register',
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => {clearText()},
                      child: Text(
                        'Reset',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      style: ElevatedButton.styleFrom(primary: Colors.blueGrey),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
