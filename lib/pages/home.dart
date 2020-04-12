import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String text = '';
  final myController = TextEditingController();

  @override
  initState() {
    super.initState();
    myController.addListener(getLatest);
  }

  getLatest() {
    setState(() {
      text = myController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter forms lesson 3'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          child: Column(
            children: <Widget>[
              Text(
                'You typed \n $text',
                style: Theme.of(context).textTheme.headline,
              ),
              TextFormField(
                decoration: InputDecoration(hintText: 'Enter your name'),
                controller: myController,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
