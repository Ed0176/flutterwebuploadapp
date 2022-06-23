import 'package:flutter/material.dart';
import '../course_bloc.dart';
import 'package:provider/provider.dart';

class EditCourse extends StatefulWidget {
  const EditCourse({Key? key}) : super(key: key);

  @override
  _EditCourseState createState() => _EditCourseState();
}

class _EditCourseState extends State<EditCourse> {
  @override
  Widget build(BuildContext context) {
    var courseBloc = Provider.of<CourseBloc>(context);
    return body(courseBloc, context);
  }
}

Widget body(CourseBloc courseBloc, BuildContext context) {
  return ListView(
    children: <Widget>[
      Text(
        'Hi',
        textAlign: TextAlign.center,
      ),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Divider(color: Colors.blue),
      ),
      StreamBuilder<String>(
          stream: courseBloc.courseId,
          builder: (context, snapshot) {
            return TextField(
              decoration: InputDecoration(
                labelText: 'Coursename',
              ),
            );
          }),
    ],
  );
}
