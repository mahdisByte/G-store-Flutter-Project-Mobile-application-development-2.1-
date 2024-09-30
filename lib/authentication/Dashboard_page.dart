import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Login_page.dart';
class DashboardPage extends StatelessWidget{
  var controller_firstNameText = TextEditingController();
  var controller_lastNameText = TextEditingController();
  var controller_userNameText = TextEditingController();
  var controller_emailText = TextEditingController();
  var controller_passText = TextEditingController();
  var controller_confirmPassText= TextEditingController();
  Widget build (BuildContext context){
    return Scaffold (
      //resizeToAvoidBottomInset: false,
      body: Container(
        color: Colors.black87,
        width:double.infinity,
        height:double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 50, width: 50),
              //logo

            ],
          ),
        ),
      ),
    );
  }
}