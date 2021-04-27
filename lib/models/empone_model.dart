

import 'emp1_model.dart';
import 'emp_model.dart';

class EmpOne {
  String status;
  String message;
  Employee1 data;

  EmpOne.fromJson(Map<String, dynamic> json)
      : status = json['status'],
        message = json['message'],
        data=Employee1.fromJson(json['data']);

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message,
    "data": data.toJson(),
  };

}