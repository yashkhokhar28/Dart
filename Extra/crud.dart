// import 'dart:io';
import 'dart:io';

class Student {
  List<Map<String, dynamic>> list = [];

  void addStudent() {
    Map<String, dynamic> map = {};

    print("Enter Enrollment Number Of Student : ");
    map["enrollment"] = stdin.readLineSync();
    print("Enter Name Of Student : ");
    map["name"] = stdin.readLineSync();
    print("Enter Age Of Student : ");
    map["age"] = stdin.readLineSync();
    print("Enter City Of Student : ");
    map["city"] = stdin.readLineSync();
    print("Enter Department Of Student : ");
    map["department"] = stdin.readLineSync();

    list.add(map);
  }

  void displayStudentDetails() {
    for (var i = 0; i < list.length; i++) {
      Map<String, dynamic> map = list[i];
      print("Enrollment Number : ${map["enrollment"]}");
      print("Name : ${map["name"]}");
      print("Age : ${map["age"]}");
      print("City : ${map["city"]}");
      print("Department : ${map["department"]}");
      print(
          "________________________________________________________________________________________________________________________________________________");
    }
  }

  void displayByIndex(int index) {
    Map<String, dynamic> map = list[index];
    print("Enrollment Number : ${map["enrollment"]}");
    print("Name : ${map["name"]}");
    print("Age : ${map["age"]}");
    print("City : ${map["city"]}");
    print("Department : ${map["department"]}");
    print(
        "________________________________________________________________________________________________________________________________________________");
  }

  int searchStudent(
      {dynamic enrollment,
      dynamic name,
      dynamic age,
      dynamic city,
      dynamic department}) {
    for (var i = 0; i < list.length; i++) {
      Map<String, dynamic> map = list[i];
      if (map["enrollment"] == enrollment ||
          map["name"] == name ||
          map["age"] == age ||
          map["city"] == city ||
          map["department"] == department) {
        print("Found At $i");
      }
    }
    return 0;
  }

  void deleteStudent(
      {dynamic name, dynamic enrollment, dynamic department, dynamic spi}) {
    if (list.length < 0) {
      print("No Data Found");
      return;
    }
    int index = searchStudent(enrollment: enrollment);
    if (index >= 0 && index <= list.length) {
      print("Data Found And Deleted");
      list.removeAt(index);
    } else {
      print("No Data Found");
      displayStudentDetails();
    }
  }

  void editStudent(
      {dynamic enrollment,
      dynamic name,
      dynamic age,
      dynamic city,
      dynamic department}) {
    if (list.length <= 0) {
      print("No Data Found");
      return;
    }
    int index = searchStudent(enrollment: enrollment);
    Map<String, dynamic> map = list[index];

    print("Enter Your Choice : ");
    print(
        "1. Edit Enrollment Number\n2. Edit Name\n3. Edit Age\n4. Edit City\n5. Edit Department\n");
    int choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        print("Enter Enrollment Number : ");
        dynamic enrollment = stdin.readLineSync();
        map["enrollment"] = enrollment;
        break;
      case 2:
        print("Enter Name : ");
        dynamic name = stdin.readLineSync();
        map["name"] = name;
        break;
      case 3:
        print("Enter Age : ");
        dynamic age = stdin.readLineSync();
        map["age"] = age;
        break;
      case 4:
        print("Enter City : ");
        dynamic city = stdin.readLineSync();
        map["city"] = city;
        break;
      case 5:
        print("Enter Department : ");
        dynamic department = stdin.readLineSync();
        map["department"] = department;
        break;
    }
    displayByIndex(index);
  }
}

void main(List<String> args) {
  Student student = new Student();
  int exit = 0;
  while (exit != 6) {
    print("1. Add\n2. Display\n3. Search\n4. Update\n5. Delete\n6. Exit");
    print("Enter Your Choice : ");
    int choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        student.addStudent();
        break;
      case 2:
        student.displayStudentDetails();
        break;
      case 3:
        print("Search By Enrollment : ");
        int enrollment = int.parse(stdin.readLineSync()!);
        student.searchStudent(enrollment: enrollment);
        break;
      case 4:
        print("Edit By Enrollment : ");
        int enrollment = int.parse(stdin.readLineSync()!);
        student.editStudent(enrollment: enrollment);
        break;
      case 5:
        print("Delete By Enrollment : ");
        int enrollment = int.parse(stdin.readLineSync()!);
        student.deleteStudent(enrollment: enrollment);
        break;
      case 6:
        exit = choice;
        break;
    }
  }
}
