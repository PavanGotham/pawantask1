// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:my_flutter_project_task/Forgotpage.dart';
import 'package:my_flutter_project_task/MyTask.dart';
import 'package:my_flutter_project_task/validation.dart';
import 'package:my_flutter_project_task/web/webscreen.dart';

class Webviewpage extends StatefulWidget {
  const Webviewpage({super.key});

  @override
  State<Webviewpage> createState() => _WebviewpageState();
}

class _WebviewpageState extends State<Webviewpage> {
  var items = ['English', 'Hindi'];

  var selecteditem = "English";
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Webscreen.isLargeScreen(context)
              ? Expanded(flex: 3, child: Image.asset("images/inconsult.png"))
              : Text(""),
          Expanded(
            flex: 3,
            child: Form(
              key: _formKey,
              child: Container(
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
                    SizedBox(
                      height: 70,
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

                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Email :',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),

                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'please enter name';
                        } else if (!emailval.hasMatch(value)) {
                          return 'enter valid mail';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: 'Enter user Name',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Password :',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    // Text('Password* :'),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'please enter password';
                        } else if (!capitalval.hasMatch(value)) {
                          return 'Password must contain atleast one capital letter';
                        } else if (!smallval.hasMatch(value)) {
                          return 'Password must contain atleast one small letter';
                        } else if (!numberval.hasMatch(value)) {
                          return 'Password must contain atleast one Number';
                        } else if (!specialval.hasMatch(value)) {
                          return 'Password must contain atleast one Special character';
                        } else if (!numlengthval.hasMatch(value)) {
                          return 'Password length must be atleast 7';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: 'Please enter password',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(color: Colors.blue),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Forgotpage()));
                        },
                      ),
                    ),
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
                              const SnackBar(content: Text('Processing Data')),
                            );
                          }
                        },
                        child: Text('Login'),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 75.0),
                        child: Row(
                          children: [
                            Text('New to InConsult?'),
                            TextButton(
                              child: Text(
                                'Sing Up',
                                style: TextStyle(color: Colors.blue),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MyTask()));
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Text('© 2022 InstaVC Inc. All Rights Reserved.'),
                          Text(
                            'I agree',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Text('Terms & Conditions'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
