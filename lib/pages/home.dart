import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var myFocus;

  @override
  void initState() {
    super.initState();
    myFocus = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    myFocus.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forms Lesson 2'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          child: Column(
            children: <Widget>[
              TextFormField(
                autofocus: true,
                decoration: InputDecoration(
                  hintText: 'First Name',
                ),
              ),
              TextFormField(
                focusNode: myFocus,
                decoration: InputDecoration(
                  hintText: 'Last Name',
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('Next'),
        onPressed: () => myFocus.requestFocus(),
      ),
    );
  }
}
