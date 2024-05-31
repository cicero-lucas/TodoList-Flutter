import 'package:app/App/models/todoList_model.dart';
import 'package:dio/dio.dart';

class TodolistRefector{
  final dio=Dio();
  final url="https://jsonplaceholder.typicode.com/todos/";

  Future buscarDados() async{
    var dados=await dio.get(url);
    var listaDados = dados.data as List;
    return listaDados.map((dado)=>TodolistModel.fromJson(dado)).toList();
  }
}




