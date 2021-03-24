import 'dart:convert';

import 'package:employeeappflutter/employee.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class employeesPage extends StatefulWidget {
  employeesPage({Key key}) : super(key: key);

  @override
  _employeesPageState createState() => _employeesPageState();
}

class _employeesPageState extends State<employeesPage> {

  Dio dio = new Dio();
  List<employee> employeesList = [];
  @override
void initState() {
    // TODO: implement initState
    super.initState();
    getEmployee();
  }

    Future<List<employee>> getEmployee()  async {
    employeesList.clear();
    Response response;
    response = await dio.get("http://dummy.restapiexample.com/api/v1/employees");
    // print(response.data.runtimeType);
    // print(response.data["data"][1]);
    for(int i = 0 ; i < response.data['data'].length ; i++  ){
      employee emp = new employee(response.data['data'][i]["id"] , response.data['data'][i]["employee_name"],response.data['data'][i]["employee_salary"], response.data['data'][i]["employee_age"], " ");
      employeesList.add(emp);
    }

    return employeesList;
      // print(jsonDecode(response.data.toString()));

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
        floatingActionButton: FloatingActionButton(
          onPressed: () => {
          Navigator.pushNamed(context, '/add_employee')
        } ,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        )
    );
  }

  Widget buildBody() {
    var _textStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w700,
    );

    return FutureBuilder(
        future: getEmployee(),
        initialData: [],
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return Column(
            children: [
              Expanded(child:ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: snapshot.data.length ,
                  itemBuilder:(BuildContext context, int index) {
                    return Container(
                      height: 50,
                      margin: EdgeInsets.all(2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('${snapshot.data[index].employee_name }'),
                          Text('Age : ${snapshot.data[index].employee_age}'),

                        ],
                      )
                    );
                  }

              )
              )
            ],
          );
        },
    );
  }
}
