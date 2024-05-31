import 'package:app/App/controllers/todoList_controller.dart';
import 'package:flutter/material.dart';

class HomePageView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomePage_State();
  }
}

class HomePage_State extends State<HomePageView>{

  final estado = TodolistController();

  _sucesso(){
    return ListView.builder(
        itemCount: estado.lista.length,
        itemBuilder: (context,index){
          var dados=estado.lista[index];
        return ListTile(
          leading: Checkbox(value:dados.completed, onChanged:(value){
          }),
          title: Text(dados.title ),
        );
      });
  }

  _erro(){
    return Center(
      child: ElevatedButton(child: Text("Recaregar"),onPressed: (){
        estado.mostra();
      },),
    );
  }

  _loading(){
    return Center(
      child: CircularProgressIndicator() ,
    );
  }

  _satar(){
    return Center(child: Container(child: Text(""),));
  }

  mostraLista(HomeState state){
    switch(state){
      case HomeState.error:
      return _erro();
      case HomeState.loading:
      return _loading();
      case HomeState.start:
      return _satar();
      case HomeState.sucess:
      return _sucesso();
      default:
      return _satar();
    }
  }

 @override
  void initState() {
    super.initState();
     estado.mostra();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TudoList",
        style: TextStyle(fontWeight: FontWeight.w800,color: Colors.white),
      ),
      backgroundColor: Colors.orange,
    ),
    body: AnimatedBuilder(animation:estado.state,builder:(context,child){
      return mostraLista(estado.state.value);
    },)
    );
  }

}