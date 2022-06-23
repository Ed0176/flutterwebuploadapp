import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class CourseUpload {
  String courseId;
  String instructorName;
  String courseName;
  String categoryName;
  String imageUrl;

  CourseUpload({
    required this.courseId,
    required this.instructorName,
    required this.courseName,
    required this.categoryName,
    required this.imageUrl,
  });

  Map<String, dynamic> toMap() {
    return {
      'courseId': courseId,
      'instructorName': instructorName,
      'courseName': courseName,
      'categoryName': categoryName,
      'imageUrl': imageUrl,
    };
  }

  CourseUpload.fromFirestore(Map<String, dynamic> firestore)
      : courseId = firestore['courseId'],
        instructorName = firestore['instructorName'],
        courseName = firestore['courseName'],
        categoryName = firestore['categoryName'],
        imageUrl = firestore['imageUrl'];
}
