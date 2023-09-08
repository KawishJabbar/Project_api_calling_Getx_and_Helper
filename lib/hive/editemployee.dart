import 'package:flutter/material.dart';
import 'package:flutter_project/hive/Box.dart';
import 'package:flutter_project/models/notes_model.dart';
//import 'package:flutter_project/models/notes_model.dart';
//import 'package:flutter_project/Box.dart';
//import 'package:flutter_project/models/notes_model.dart';

class EditEmployee extends StatefulWidget {
  int index;
  EditEmployee({super.key, required this.index});

  @override
  State<EditEmployee> createState() => _EditEmployeeState();
}

class _EditEmployeeState extends State<EditEmployee> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController salary = TextEditingController();
  TextEditingController designation = TextEditingController();
  NotesModel notesModel = NotesModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Edit Employee")),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(20)),
            Text(widget.index.toString()),
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
                  onPressed: () async {
                    NotesModel data = NotesModel(
                      name: name.text.toString(),
                      email: email.text.toString(),
                      phone: phone.text.toString(),
                      salary: salary.text.toString(),
                      designation: designation.text.toString(),
                    );
                    print(notesModel);
                    final box = Boxes.getdata();
                    box.putAt(widget.index, data);
                    name.clear();
                    email.clear();
                    phone.clear();
                    salary.clear();
                    designation.clear();

                    // notesModel.name = name.text.toString();
                    // notesModel.email = email.text.toString();
                    // notesModel.phone = phone.text.toString();
                    // notesModel.salary = salary.text.toString();
                    // notesModel.designation = designation.text.toString();
                    // final box = Boxes.getdata();
                    //ox.putAt(2, )
                    //ox.putAt(2, )
                  },
                  child: Text("Update"),
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => EmployeeView()),
                    //);
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
