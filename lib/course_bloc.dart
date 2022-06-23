// import 'dart:async';

// import 'package:upload/services/firestore_service.dart';
// import 'package:uuid/uuid.dart';

// import '../upload.dart';
// import 'package:rxdart/rxdart.dart';

// class CourseBloc{

//    //Getters
//     Stream<String> get courseId => _courseId.stream.transform(validateProductName);

//    final _courseId = BehaviorSubject<String>();
//   final _instructorName = BehaviorSubject<String>();
//   final _courseName = BehaviorSubject<String>();
//   final _categoryName = BehaviorSubject<String>();
//   final _imageUrl = BehaviorSubject<String>();

//   final db = FirestoreService();
//   var uuid = Uuid();
//   Future<void> saveCourse() async{
//    var courseUpload = CourseUpload(
//      courseId: uuid.v4(),//(_courseId.value == null) ? true : _product.value.approved,
//      instructorName: _categoryName.value.trim(),
//      courseName: _categoryName.value.trim(),
//      categoryName: _categoryName.value.trim(),
//      imageUrl: ''

//    );

//    return db.addCourse(courseUpload)
//    .then((value)=> print('Course Saved'))
//    .catchError((error) => print(error));
// }

//   final validateProductName = StreamTransformer<String, String>.fromHandlers(handleData: (courseId, sink){
//     if (courseId != null){
//       if(courseId.length>=3 && courseId.length <=20){
//         sink.add(courseId.trim());
//       }
//       else{
//         if(courseId.length < 3){
//           sink.addError('3 Characters Minimum');
//         } else
//         {
//           sink.addError('20 Characters Maximum');
//         }

//       }
//     }

//   });
// }
