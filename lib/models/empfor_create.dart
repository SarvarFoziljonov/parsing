import 'emp1_create.dart';

class EmpCreate{
  String status;
  String message;
  Employ data;
  EmpCreate.fromJson(Map<String,dynamic> json):
        status=json['status'],
        message=json['message'],
        data=Employ.fromJson(json['data']);
  Map<String,dynamic> toJson(){
    return {
      'status':this.status,
      'message':this.message,
      'data':this.data.toJson(),
    };
  }
}