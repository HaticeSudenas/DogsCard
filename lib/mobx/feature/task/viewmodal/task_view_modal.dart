import 'package:dsc_flutter/mobx/core/network/network_manager.dart';
import 'package:dsc_flutter/mobx/feature/task/service/task_service.dart';
import 'package:mobx/mobx.dart';

import '../modal/task_modal.dart';
part 'task_view_modal.g.dart';

class TaskViewModal=_TaskViewModalBase with _$TaskViewModal;

abstract class _TaskViewModalBase with Store{
  @observable
  List<TaskModal> taskModal=[];
  @observable
  LifeState pageLifes=LifeState.IDDLE;

  late TaskService taskService;
  _TaskViewModalBase(){
    taskService=TaskService(NetworkManager.instance.dio);
    fetchItems();
  }
  @action
  Future<void> fetchItems()async {
    pageLifes=LifeState.LOADING;
    taskModal=await taskService.fetchAllTask();
    pageLifes=LifeState.DONE;
  }

}
enum LifeState{
  IDDLE,
  LOADING,
  DONE
}