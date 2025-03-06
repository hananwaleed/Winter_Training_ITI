class school {
  String? name;
  int? age;

  school({required this.name, required this.age});
}

class college {
  int? id;
  school? School;

  college({required this.id, required this.School});
}

void main() {
  school stu = school(name: "hanan", age: 19);
  college student1 = college(id: 111, School: stu);

  print(" college name ${student1.School?.name}");
  print(" college age ${student1.School?.age}");
  print(" college id${student1.id} ");
}
