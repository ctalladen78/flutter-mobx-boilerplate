
class TodoModel {
  String description;
  String status;
  String get getDescription => this.description;
  String get getStatus => this.status;
  set setStatus(String newStatus){this.status = newStatus;}
  TodoModel({this.description});
}