import 'dart:io';

class Student {
  String name = '';
  String ID = '';
  int num = 0;
  List<String> courses = [];

  Student(String n, String id, int num) {
    name = n;
    ID = id;
    this.num = num;
    for (int i = 0; i < num; i++) {
      print('Enter course no. ${i + 1}:');
      String courseName = stdin.readLineSync()!;
      courses.add(courseName);
    }
  }

  void addCourse(String courseName) {
    courses.add(courseName);
    print('$courseName added');
  }

  void dropCourse(String courseName) {
    if (courses.contains(courseName)) {
      courses.remove(courseName);
      print('$courseName removed');
    } else {
      print('Course $courseName not found');
    }
  }

  void display() {
    print('Student Name: $name');
    print('Student ID: $ID');
    for (int i = 0; i < courses.length; i++) {
      print('Course no. ${i + 1}: ${courses[i]}');
    }
  }
}

void main() {
  Student stud1 = Student('ABC', 'CS-567', 5);
  Student stud2 = Student('XYZ', 'CS-123', 6);
  stud1.addCourse('Linear Algebra');
  stud1.display();

  stud2.dropCourse('Digital Logic Design');
  stud2.display();
}
