import 'package:app/App/refectores/todoList_refector.dart';
import 'package:app/App/models/todoList_model.dart';
import 'package:flutter/material.dart';

class TodolistController {
  List<TodolistModel> lista = [];
  final listaDados = TodolistRefector();
  final state = ValueNotifier<HomeState>(HomeState.start);
  

  Future<void> mostra() async {
    state.value=HomeState.loading;
    try {
      lista = await listaDados.buscarDados();
      state.value=HomeState.sucess;
    } catch (e) {
      state.value=HomeState.error;
    }
  }

}

enum HomeState {
  error,
  sucess,
  loading,
  start,
}
