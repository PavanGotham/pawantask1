// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, sort_child_properties_last, file_names

import 'package:flutter/material.dart';
import 'package:my_flutter_project_task/bigscreen/webviewpage.dart';
import 'package:my_flutter_project_task/validation.dart';

class Forgotpage extends StatefulWidget {
  @override
  State<Forgotpage> createState() => _ForgotpageState();
}

class _ForgotpageState extends State<Forgotpage> {
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
                            height: 200,
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
                        height: 40,
                      ),
                      Text(
                        'Forgot Your Password',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Text(
                        'Enter your Registered email We will send',
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text('OTP to reset your password'),
                      SizedBox(
                        height: 30.0,
                      ),
                      TextFormField(
                        validator: (value) {
                          return validMail(value);
                        },
                        decoration: InputDecoration(
                          hintText: 'Enter your Email',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(
                        height: 35.0,
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
                          child: Text('Submit'),
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      TextButton(
                        child: Text('<-- Back to Login'),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Webviewpage()));
                        },
                      ),
                    ],
                  ),
                ),
              ],
            )));
  }
}
