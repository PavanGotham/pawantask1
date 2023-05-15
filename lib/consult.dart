// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, camel_case_types, sort_child_properties_last

import 'package:flutter/material.dart';

import 'package:my_flutter_project_task/MyTask.dart';
import 'package:my_flutter_project_task/corporate.dart';
import 'package:my_flutter_project_task/validation.dart';

class consult extends StatefulWidget {
  @override
  State<consult> createState() => _consultState();
}

class _consultState extends State<consult> {
  var items = ['Select consultation type', 'legal'];

  var selecteditem = "Select consultation type";
  var items1 = ['English', 'Hindi'];

  var selecteditem1 = "English";
  final _formKey = GlobalKey<FormState>();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // body: Container
        //(alignment: Alignment.topCenter, child: Text('inConsult')),
        body: Form(
            key: _formKey,
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.all(30),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('Help'),
                          ),
                          SizedBox(
                            height: 30,
                            width: 20,
                          ),
                          DropdownButton(
                              value: selecteditem1,
                              items: items1.map((item) {
                                return DropdownMenuItem(
                                  child: Text(item),
                                  value: item,
                                );
                              }).toList(),
                              onChanged: (val) {
                                selecteditem1 = val!;
                              }),
                          SizedBox(
                            height: 80,
                          ),
                        ],
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Image.asset("imglogo/invc.png"),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Text(
                        'Sign Up As',
                        style: TextStyle(fontSize: 30),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Row(
                        children: [
                          SizedBox(
                              width: 95,
                              height: 30,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(255, 194, 227, 233)),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => MyTask()));
                                  },
                                  child: Text(
                                    'User',
                                    style: TextStyle(color: Colors.black),
                                  ))),
                          SizedBox(
                              width: 95,
                              height: 30,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => consult()));
                                  },
                                  child: Text(
                                    'Consult',
                                    style: TextStyle(color: Colors.black),
                                  ))),
                          SizedBox(
                              width: 95,
                              height: 30,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(255, 194, 227, 233)),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => corporate()));
                                  },
                                  child: Text(
                                    'Corporate',
                                    style: TextStyle(color: Colors.black),
                                  ))),
                        ],
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Consultant Type* :'),
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      // Text('Full Name* :'),
                      SizedBox(
                        width: 600,
                        height: 40,
                        child: DropdownButton(
                            value: selecteditem,
                            items: items.map((item) {
                              return DropdownMenuItem(
                                child: Text(item),
                                value: item,
                              );
                            }).toList(),
                            onChanged: (val) {
                              selecteditem = val!;
                            }),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),

                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Sub Type* :'),
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      // Text('gmail address* :'),
                      SizedBox(
                        width: 600,
                        height: 40,
                        child: DropdownButton(
                            value: selecteditem,
                            items: items.map((item) {
                              return DropdownMenuItem(
                                child: Text(item),
                                value: item,
                              );
                            }).toList(),
                            onChanged: (val) {
                              selecteditem = val!;
                            }),
                      ),

                      SizedBox(
                        height: 30.0,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Full Name* :'),
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      // Text('Password* :'),

                      TextFormField(
                        validator: (value) {
                          return validEmplty(value);
                        },
                        decoration: InputDecoration(
                          hintText: 'Full Name',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Email Address* :'),
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      // Text('conform password* :'),
                      TextFormField(
                        validator: (value) {
                          return validMail(value);
                        },
                        decoration: InputDecoration(
                          hintText: 'Email Address',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),

                      SizedBox(
                        width: 600,
                        height: 40,
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('Processing ..')),
                              );
                            }
                          },
                          child: Text('Create Account'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )));
  }
}
