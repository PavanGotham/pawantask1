// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, sort_child_properties_last, file_names

import 'package:flutter/material.dart';

import 'package:my_flutter_project_task/consult.dart';
import 'package:my_flutter_project_task/corporate.dart';
import 'package:my_flutter_project_task/validation.dart';

class MyTask extends StatefulWidget {
  @override
  State<MyTask> createState() => _MyTaskState();
}

class _MyTaskState extends State<MyTask> {
  var items = ['English', 'Hindi'];

  var selecteditem = "English";
  final _formKey = GlobalKey<FormState>();
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
                        Row(
                          children: [
                            ElevatedButton.icon(
                              icon: Icon(Icons.play_circle),
                              onPressed: () {},
                              label: Text('Help'),
                            ),
                            SizedBox(
                              height: 30,
                              width: 20,
                            ),
                            DropdownButton(
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
                          ],
                        ),
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
                              backgroundColor: Colors.white,
                            ),
                            onPressed: () {},
                            child: Text(
                              'User',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
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
                      child: Text('Full Name* :'),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),

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
                      height: 20.0,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('gmail address* :'),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),

                    TextFormField(
                      validator: (value) {
                        return validMail(value);
                      },
                      decoration: InputDecoration(
                        hintText: 'Gmail Address',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Password* :'),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    // Text('Password* :'),
                    TextFormField(
                      controller: password,
                      validator: (value) {
                        return validPassword(value);
                      },
                      decoration: InputDecoration(
                        hintText: 'Password',
                        suffixIcon: Icon(Icons.visibility_off),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Conform Password* :'),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    // Text('conform password* :'),
                    TextFormField(
                      validator: (value) {
                        return reEnterPassword(value);
                      },
                      decoration: InputDecoration(
                        hintText: 'Conform Password',
                        suffixIcon: Icon(Icons.visibility_off),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                        'The password must character like @, upper and lower case letters'),
                    SizedBox(
                      height: 20.0,
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
          )),
    );
  }
}
