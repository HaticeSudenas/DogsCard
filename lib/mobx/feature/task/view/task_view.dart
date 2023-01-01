import 'package:dsc_flutter/mobx/core/widgets/task_card.dart';
import 'package:dsc_flutter/mobx/feature/task/viewmodal/task_view_modal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

final _taskViewModal = TaskViewModal();

class TaskView extends StatelessWidget {
  TaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: buildObserverTitle(),
        ),
        body: buildObserverBody());
  }

  Observer buildObserverTitle() {
    return Observer(
            builder: (_) => Visibility(
                  child:  Center(
                      child: CircularProgressIndicator(
                    color: Colors.red,
                  )),
                  visible: _taskViewModal.pageLifes == LifeState.LOADING,
                ));
  }

  Observer buildObserverBody() {
    return Observer(
        builder: (_) => ListView.builder(
            itemCount: _taskViewModal.taskModal.length,
            itemBuilder: ((context, index) {
              return TaskCard(taskModal: _taskViewModal.taskModal[index]);
            })),
      );
  }
}
