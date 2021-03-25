import 'package:employeeappflutter/EmployeesModel.dart';
import 'package:employeeappflutter/employee.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:scoped_model/scoped_model.dart';

class employeePage extends StatefulWidget {
  employeePage({Key key}) : super(key: key);

  @override
  _employeePageState createState() => _employeePageState();
}

class _employeePageState extends State<employeePage> {

  Dio dio = new Dio();

  final nameController = TextEditingController();
  final ageController = TextEditingController();


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nameController.dispose();
    ageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: buildBody(),
          ),
        ),
      ),
    );
  }


  Widget buildBody() {
    var _textStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w700,
    );

    return ScopedModelDescendant<EmployeesModel>(
      builder:(context , child , model) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                    hintText: 'Employee Name'
                ),
              ),
              TextField(
                controller: ageController,
                decoration: InputDecoration(
                    hintText: 'Employee Age'
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: ElevatedButton(
                  onPressed: () =>
                  {
                      model.addemployee(new employee(" ", nameController.text, " ", ageController.text, " "))
                    ,
                      Navigator.pushNamed(context, '/employees')


                },
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    child: Text(
                      "ADD",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        )),
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.lightBlueAccent,

                    ),
                  ),
                ),

              ),
            ],

          ),
        );

      }
    );
  }
}
