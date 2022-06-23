import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:upload/edit_course.dart';

//void main() => runApp(MyApp());

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(40.0),
          child: Center(
            child: Column(children: [
              TextFormField(decoration: InputDecoration(hintText: 'sample data')),
              FlatButton(
                onPressed: () {},
                child: Text('Submit'),
                color: Colors.orange,
              )
            ]),
          ),
        ),
      ),
    );
  }
}
