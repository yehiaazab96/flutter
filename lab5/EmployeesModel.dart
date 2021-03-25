import 'package:employeeappflutter/employee.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:scoped_model/scoped_model.dart';


class EmployeesModel extends Model {
  List<employee> _employeesList = [];
  Dio dio = new Dio();
  List<employee> get employeesList => _employeesList;

  EmployeesModel(){
    getEmployee();
  }
  void getEmployee()  async {
    Response response;
    response = await dio.get("http://dummy.restapiexample.com/api/v1/employees");
    print(response.data);
    for(int i = 0 ; i < response.data['data'].length ; i++  ){
      employee emp = new employee(response.data['data'][i]["id"] ?? " " , response.data['data'][i]["employee_name"] ?? " ",response.data['data'][i]["employee_salary"] ?? " ", response.data['data'][i]["employee_age"]?? " " , " ");
      employeesList.add(emp);
    }
  }

  void addemployee (employee emp) async {
      Response response;
      response = await dio.post("http://dummy.restapiexample.com/api/v1/create", data: 	{"name":'${emp.employee_name}',"age":'${emp.employee_age}'});
      employeesList.add(emp);
      print(response);
      notifyListeners();
  }


}