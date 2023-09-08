import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class hiveView extends StatefulWidget {
  const hiveView({super.key});

  @override
  State<hiveView> createState() => _hiveViewState();
}

class _hiveViewState extends State<hiveView> {
  //references our box
  final _myBox = Hive.box('mybox');
  //write data
  void writedata() {
    _myBox.put(1, 'kawish');
    print(_myBox.get(1));
  }

  //read data
  void readdata() {}
  //delete data
  void deletedata() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MaterialButton(
              onPressed: () {
                writedata();
              },
              child: Text("Write"),
              color: Colors.purple,
            ),
            MaterialButton(
              onPressed: () {},
              child: Text("Read"),
              color: Colors.blue,
            ),
            MaterialButton(
              onPressed: () {},
              child: Text("Delete"),
              color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}
