import 'package:dio/dio.dart';
import 'package:dsc_flutter/mobx/feature/task/modal/task_modal.dart';

abstract class ITaskService{
  final Dio dio;

  ITaskService(this.dio);

  Future<List<TaskModal>> fetchAllTask();
}