import 'package:dsc_flutter/mobx/feature/task/modal/task_modal.dart';
import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({super.key, required this.taskModal});
 final TaskModal taskModal;
  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.green,
            ),
            body: Image.network(taskModal.imageUrl!),
          ),
        ));
      },
      title: Text(taskModal.description ?? ''),
      leading: CircleAvatar(
          backgroundImage:
              NetworkImage(taskModal.imageUrl ?? '')),
    ));
  }
}
