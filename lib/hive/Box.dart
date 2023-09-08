import 'package:flutter_project/models/notes_model.dart';
//import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';

class Boxes {
  static Box<NotesModel> getdata() => Hive.box<NotesModel>('notes');
}
