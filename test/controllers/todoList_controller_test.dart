import 'package:app/App/controllers/todoList_controller.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TodolistController a = TodolistController();
  test("teste do controller", () async{
    print( a.mostra());
    print(a.lista);
  });
}