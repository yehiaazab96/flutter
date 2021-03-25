import 'dart:convert';

import 'package:employeeappflutter/EmployeesModel.dart';
import 'package:employeeappflutter/employee.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:scoped_model/scoped_model.dart';

class employeesPage extends StatefulWidget {
  employeesPage({Key key}) : super(key: key);

  @override
  _employeesPageState createState() => _employeesPageState();
}

class _employeesPageState extends State<employeesPage> {

  @override
void initState() {
    // TODO: implement initState
    super.initState();
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

    return ScopedModelDescendant<EmployeesModel>(
        builder:(context , child , model){
          return Column(
            children: [
              Expanded(child:ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: model.employeesList.length ?? 0 ,
                  itemBuilder:(BuildContext context, int index) {
                    return Container(
                        height: 50,
                        margin: EdgeInsets.all(2),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('${model.employeesList[index].employee_name ?? " " }'),
                            Text('Age : ${model.employeesList[index].employee_age ?? " "}'),

                          ],
                        )
                    );
                  }

              )
              )
            ],
          );
        }

    );


  }
}
