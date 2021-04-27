class Employ{
  String name;
  String salary;
  String age;
  int id;
  Employ.fromJson(Map<String,dynamic>json):
        name=json['name'],
        salary=json['salary'],
        age=json['age'],
        id=json['id'];
  Map<String,dynamic> toJson(){
    return {
      'name':this.name,
      'salary':this.salary,
      'age':this.age,
      'id':this.id,
    };
  }
}