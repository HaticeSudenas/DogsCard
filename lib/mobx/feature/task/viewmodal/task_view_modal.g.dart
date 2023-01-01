// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_view_modal.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TaskViewModal on _TaskViewModalBase, Store {
  late final _$taskModalAtom =
      Atom(name: '_TaskViewModalBase.taskModal', context: context);

  @override
  List<TaskModal> get taskModal {
    _$taskModalAtom.reportRead();
    return super.taskModal;
  }

  @override
  set taskModal(List<TaskModal> value) {
    _$taskModalAtom.reportWrite(value, super.taskModal, () {
      super.taskModal = value;
    });
  }

  late final _$pageLifesAtom =
      Atom(name: '_TaskViewModalBase.pageLifes', context: context);

  @override
  LifeState get pageLifes {
    _$pageLifesAtom.reportRead();
    return super.pageLifes;
  }

  @override
  set pageLifes(LifeState value) {
    _$pageLifesAtom.reportWrite(value, super.pageLifes, () {
      super.pageLifes = value;
    });
  }

  late final _$fetchItemsAsyncAction =
      AsyncAction('_TaskViewModalBase.fetchItems', context: context);

  @override
  Future<void> fetchItems() {
    return _$fetchItemsAsyncAction.run(() => super.fetchItems());
  }

  @override
  String toString() {
    return '''
taskModal: ${taskModal},
pageLifes: ${pageLifes}
    ''';
  }
}
