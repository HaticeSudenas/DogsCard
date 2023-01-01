import 'package:json_annotation/json_annotation.dart';
part 'task_modal.g.dart';

@JsonSerializable()
class TaskModal{
  int? code;
  String? description;
  String? imageUrl;
  TaskModal();
  factory TaskModal.fromJson(Map<String, dynamic> json) {
    return _$TaskModalFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$TaskModalToJson(this);
  }
}