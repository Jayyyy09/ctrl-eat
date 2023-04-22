class Person {
  String? name;
  int? age;
  int? room;

  Person({this.name, this.age, this.room});

  Person.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    age = json['age'];
    room = json['room'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['age'] = this.age;
    data['room'] = this.room;
    return data;
  }
}
