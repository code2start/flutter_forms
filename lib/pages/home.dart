import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text('Form Lesson 1'),
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter your name',
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return "Name is required";
                }
                return null;
              },
            ),
            RaisedButton(
              child: Text('Send'),
              onPressed: () {
                if (formKey.currentState.validate()) {
                  //save data local or go to server
                  scaffoldKey.currentState.showSnackBar(SnackBar(
                    content: Text(
                      'Saving data local or on the server',
                    ),
                  ));
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
