import '../libraries.dart';

class EmployeeInfo extends StatefulWidget {
  int index;
  String name;
  String email;
  String phone;
  String salary;
  String designation;

  EmployeeInfo(
      {super.key,
      required this.index,
      required this.name,
      required this.email,
      required this.phone,
      required this.salary,
      required this.designation});

  @override
  State<EmployeeInfo> createState() => _EmployeeInfoState();
}

class _EmployeeInfoState extends State<EmployeeInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Single Employee Info"),
        ),
      ),
      body: Column(
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(widget.index.toString()),
                Text(widget.name.toString()),
                Text(widget.email.toString()),
                Text(widget.phone.toString()),
                Text(widget.salary.toString()),
                Text(widget.designation.toString()),
                SizedBox(height: 50),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EditEmployee(
                                  index: widget.index,
                                  // name: widget.name.toString(),
                                  // email: widget.email.toString(),
                                  // phone: widget.phone.toString(),
                                  // salary: widget.salary.toString(),
                                  // designation: widget.designation.toString(),
                                )),
                      );
                    },
                    child: Text("Update"))
              ],
            ),
          )
        ],
      ),
    );
  }
}
