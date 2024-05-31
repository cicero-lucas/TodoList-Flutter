import 'package:app/App/refectores/todoList_refector.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final TodolistRefector m =TodolistRefector();
  test("teste",() async{
    var l=await m.buscarDados();
    print(l[2].id);
  });
}