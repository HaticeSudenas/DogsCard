import 'dart:io';

import 'package:dsc_flutter/mobx/feature/task/modal/task_modal.dart';
import 'package:dsc_flutter/mobx/feature/task/service/ITaskService.dart';
part 'task_service_endpoint.dart';
class TaskService extends ITaskService{
  TaskService(super.dio);

  @override
  Future<List<TaskModal>> fetchAllTask() async {
    final response=await dio.get(_TaskServiceEndPoint.DOGS.rawValue);
    if(HttpStatus.ok==response.statusCode){
      final data=response.data;
      if(data is List) return data.map((e) => TaskModal.fromJson(e)).toList();
     
    }
    return [];
  }

}