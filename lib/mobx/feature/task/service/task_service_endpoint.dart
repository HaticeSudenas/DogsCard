part of 'task_service.dart';
enum _TaskServiceEndPoint{
  DOGS
}

// ignore: library_private_types_in_public_api
extension TaskServiceEndPointExtension on _TaskServiceEndPoint{
  String get rawValue{
    switch (this) {
      case _TaskServiceEndPoint.DOGS:
        return "/dogs.json";
    }
  }
}