import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import '../upload.dart';

class FirestoreService {
  FirebaseFirestore _db = Firestore.instance;
  Future<void> addCourse(CourseUpload courseUpload) {
    return _db.collection('courses').document(courseUpload.courseId).setData(courseUpload.toMap());
  }
}
