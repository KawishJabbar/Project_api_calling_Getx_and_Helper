import 'package:flutter/material.dart';
import 'package:flutter_project/hive/Box.dart';
import 'package:flutter_project/hive/employeedetail.dart';
import 'package:flutter_project/models/notes_model.dart';
//import 'package:get/get.dart';
//import 'package:hive_flutter/hive_flutter.dart';
//import 'package:flutter_project/widgets/custom_textformfield.dart';

class Hive2 extends StatefulWidget {
  const Hive2({super.key});

  @override
  State<Hive2> createState() => _Hive2State();
}

class _Hive2State extends State<Hive2> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController salary = TextEditingController();
  TextEditingController designation = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Employee Insertion Form"),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(20)),
            TextFormField(
              controller: name,
              decoration: InputDecoration(
                  hintText: "Name", border: OutlineInputBorder()),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: email,
              decoration: InputDecoration(
                  hintText: "Email", border: OutlineInputBorder()),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: phone,
              decoration: InputDecoration(
                  hintText: "Phone", border: OutlineInputBorder()),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: salary,
              decoration: InputDecoration(
                  hintText: "Salary", border: OutlineInputBorder()),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: designation,
              decoration: InputDecoration(
                  hintText: "Designation", border: OutlineInputBorder()),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    final data = NotesModel(
                        name: name.text,
                        email: email.text,
                        phone: phone.text,
                        salary: salary.text,
                        designation: designation.text);
                    final box = Boxes.getdata();
                    box.add(data);

                    data.save();
                    print(box);
                    name.clear();
                    email.clear();
                    phone.clear();
                    salary.clear();
                    designation.clear();
                  },
                  child: Text("Save"),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("Cancel"),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EmployeeView()),
                    );
                  },
                  child: Text("Employees"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
