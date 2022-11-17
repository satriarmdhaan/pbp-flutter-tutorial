// To parse this JSON data, do
//
//     final toDo = toDoFromJson(jsonString);

import 'dart:convert';

ToDo todoFromJson(String str) => ToDo.fromJson(json.decode(str));

String todoToJson(ToDo data) => json.encode(data.toJson());

class ToDo {
    ToDo({
        required this.userId,
        required this.id,
        required this.title,
        required this.completed,
    });

    int userId;
    int id;
    String title;
    bool completed;

    factory ToDo.fromJson(Map<String, dynamic> json) => ToDo(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        completed: json["completed"],
    );

    Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "completed": completed,
    };
}