class TodolistModel{
  
  final int userId;
  final int id;
  final String title;
  final bool completed;
  
  TodolistModel({required this.userId, required this.id, required this.title, required this.completed});
  
  factory TodolistModel.fromJson(json){
    return TodolistModel(
      userId: json["userId"] ?? 0,
      id:json["id"] ??0,
      title:json["title"] ??"", 
      completed:json["completed"]??""
    );
  }

  Map toJson(){
    return {
      "userId": userId,
      "id":id,
      "title":title, 
      "completed":completed
    };
  }

}

