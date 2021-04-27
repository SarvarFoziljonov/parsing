import 'package:flutter/material.dart';
import 'package:parsing/models/empone_model.dart';
import 'package:parsing/services/http_service.dart';

class EmpSingle extends StatefulWidget {
  static const String id='emp_single';
  @override
  _EmpSingleState createState() => _EmpSingleState();
}

class _EmpSingleState extends State<EmpSingle> {
  String name;
  int age,salary;
  void _apiEmpOne(int i){
    Network.GET(Network.API_EMP_ONE+i.toString(),Network.paramsEmpty()).then((response){
      print(response);
      _showResponse(response);
    });
  }
  void _showResponse(String response){
    EmpOne empOne=Network.parseEmpOne(response);
    print(empOne.data.employee_name);
    setState(() {
      name=empOne.data.employee_name;
      age=empOne.data.employee_age;
      salary=empOne.data.employee_salary;
    });
  }
  @override
  void initState(){
    super.initState();
    _apiEmpOne(1);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Employee Single'),
        centerTitle:true,
      ),
      body: Center(

        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(name, style: TextStyle(color: Colors.red, fontSize: 25),),
                  SizedBox(width: 5,),
                  Text(age.toString(), style: TextStyle(color: Colors.red, fontSize: 25),),
                ],
              ),
              Text(salary.toString()+"\$", style: TextStyle(color: Colors.black, fontSize: 20),),
            ],
          ),
        ),

    );
  }
}