//import 'package:flutter/material.dart';
//import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';
part 'notes_model.g.dart';

@HiveType(typeId: 0)
class NotesModel extends HiveObject {
  @HiveField(0)
  String? name;
  @HiveField(1)
  String? email;

  @HiveField(3)
  String? phone;

  @HiveField(4)
  String? salary;

  @HiveField(5)
  String? designation;
  NotesModel(
      {this.name, this.email, this.phone, this.salary, this.designation});
}
