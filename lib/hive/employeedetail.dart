import '../libraries.dart';

class EmployeeView extends StatefulWidget {
  const EmployeeView({super.key});

  @override
  State<EmployeeView> createState() => _EmployeeViewState();
}

class _EmployeeViewState extends State<EmployeeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Employees",
              style: TextStyle(color: Appcolor.theme1),
            ),
          ),
        ),
        body: ValueListenableBuilder<Box<NotesModel>>(
          valueListenable: Boxes.getdata().listenable(),
          builder: ((context, box, _) {
            var data = box.values.toList().cast<NotesModel>();
            return ListView.builder(
              itemCount: box.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EmployeeInfo(
                          index: index,
                          name: data[index].name.toString(),
                          email: data[index].email.toString(),
                          phone: data[index].phone.toString(),
                          salary: data[index].salary.toString(),
                          designation: data[index].designation.toString(),
                        ),
                      ),
                    );
                  },
                  child: Card(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("index:  "),
                            Text(index.toString()),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Name:  "),
                            Text(data[index].name.toString()),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Email:  "),
                            Text(data[index].email.toString()),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Phone:  "),
                            Text(data[index].phone.toString()),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Salary:  "),
                            Text(data[index].salary.toString()),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Designation:  "),
                            Text(data[index].designation.toString()),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            );
          }),
        ));
  }
}
