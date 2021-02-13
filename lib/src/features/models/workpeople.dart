class Workpeople {
  int id;
  String name;
  String position;
  int wage;
  List employees;

  Workpeople({this.id, this.name, this.position, this.wage, this.employees,});

  factory Workpeople.fromMap(Map map) {
    return Workpeople(
      id:  map['id'],
      name: map['name'],
      position: map['position'],
      wage:  map['wage'],
      employees: [map['employees']]
    );
  }
}
