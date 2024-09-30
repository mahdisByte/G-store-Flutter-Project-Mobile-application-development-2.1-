import 'dart:developer';
import 'package:g_store/authentication/firebase_authentcation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Login_page.dart';
class RegistrationPage extends StatelessWidget{

  final _auth = AuthService();

  var controller_firstNameText = TextEditingController();
  var controller_lastNameText = TextEditingController();
  var controller_userNameText = TextEditingController();
  var controller_emailText = TextEditingController();
  var controller_passText = TextEditingController();
  var controller_confirmPassText = TextEditingController();




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
              Center(
                child: Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.only(top:2, bottom: 1),
                  child: Image.asset('assets/media/logo.png'),
                  decoration: BoxDecoration(
                    //color: Colors.blueGrey,
                    //borderRadius: BorderRadius.circular(21),
                    //border: Border.all( width: 2, color: Colors.black),
                  ),
                ),
              ),
              //store name
              Center(
                child: Container(
                  width: 300,
                  height: 60,
                  margin: EdgeInsets.only(top: 5,bottom: 1),
                  child: Padding(
                    padding: EdgeInsets.only(top: 1, left:70),
                    child: Text('G-Store', style: TextStyle(fontSize: 40,color:Colors.green.shade400, fontWeight: FontWeight.bold),),
                  ),

                ),
              ),
              //sign in writing
              Center(
                child: Container(
                  width: 300,
                  height: 40,
                  margin: EdgeInsets.only(top:20, bottom: 20),
                  child: Padding(
                    padding: EdgeInsets.only(top: 1, left:90),
                    child: Text('Sign Up', style: TextStyle(fontSize: 25,color:Colors.green.shade200),),
                  ),

                ),
              ),
              //First Name
              Container(
                height: 50,
                width: 300,
                child: TextField(
                  controller: controller_firstNameText,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    //hintStyle: TextStyle(color: Colors.white),
                    hintText: 'First Name',
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(
                          color: Colors.deepOrange,
                          width: 2,
                        )

                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(
                        color: Colors.blueAccent,
                        width: 2,
                      ),
                    ),
                  ),

                ),
              ),
              //gap
              Container(height: 15,),
              //Last Name
              Container(
                height: 50,
                width: 300,
                child: TextField(
                  controller: controller_lastNameText,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    //hintStyle: TextStyle(color: Colors.white),
                    hintText: 'Last Name',
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(
                          color: Colors.deepOrange,
                          width: 2,
                        )

                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(
                        color: Colors.blueAccent,
                        width: 2,
                      ),
                    ),
                  ),

                ),
              ),
              //gap
              Container(height: 15,),
              //UserName
              Container(
                height: 50,
                width: 300,
                child: TextField(
                  controller: controller_userNameText,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    //hintStyle: TextStyle(color: Colors.white),
                    hintText: 'User Name',
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(
                          color: Colors.deepOrange,
                          width: 2,
                        )

                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(
                        color: Colors.blueAccent,
                        width: 2,
                      ),
                    ),
                  ),

                ),
              ),
              //gap
              Container(height: 15,),
              //Email box
              Container(
                height: 50,
                width: 300,
                child: TextField(
                  controller: controller_emailText,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    //hintStyle: TextStyle(color: Colors.white),
                    hintText: 'Enter Email',
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(
                          color: Colors.deepOrange,
                          width: 2,
                        )

                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(
                        color: Colors.blueAccent,
                        width: 2,
                      ),
                    ),
                  ),

                ),
              ),
              //gap
              Container(height: 15,),
              //Password
              Container(
                height: 50,
                width: 300,
                child: TextField(
                  controller: controller_passText,
                  obscureText: true,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    //hintStyle: TextStyle(color: Colors.white),
                    hintText: 'Enter Password',
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(
                          color: Colors.deepOrange,
                          width: 2,
                        )

                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(
                        color: Colors.blueAccent,
                        width: 2,
                      ),
                    ),
                  ),

                ),
              ),
              //gap
              Container(height: 15,),
              //Confirm Password
              Container(
                height: 50,
                width: 300,
                child: TextField(
                  controller: controller_confirmPassText,
                  obscureText: true,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    //hintStyle: TextStyle(color: Colors.white),
                    hintText: 'Confirm Password',
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(
                          color: Colors.deepOrange,
                          width: 2,
                        )

                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(
                        color: Colors.blueAccent,
                        width: 2,
                      ),
                    ),
                  ),

                ),
              ),
              //gap
              Container(height: 15,),
              //Signup button
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 10, bottom: 5),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(foregroundColor: Colors.yellow ,backgroundColor: Colors.blue , fixedSize: Size(300, 50)),
                    child: Text("Sign Up",style: TextStyle(fontSize: 20),),
                    onPressed: _signUp,/*(){
                      String userFirstName = controller_firstNameText.text.toString();
                      String userLastName = controller_lastNameText.toString();
                      String userName = controller_emailText.text.toString();
                      String userEmail = controller_emailText.text.toString();
                      String userPassword = controller_passText.text.toString();
                      String ConfirmPassword = controller_confirmPassText.text.toString();
                      print("Email: $userEmail, Pass: $userPassword ");


                    },*/
                  ),
                ),
              ),
              //login button
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 5, bottom: 10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(foregroundColor: Colors.yellow ,backgroundColor: Colors.blue , fixedSize: Size(300, 50)),
                    child: Text("Sign In",style: TextStyle(fontSize: 20),),
                    onPressed: (){
                      String userEmail = controller_emailText.text.toString();
                      String userPassword = controller_passText.text.toString();
                      print("Email: $userEmail, Pass: $userPassword");
                      // Get.to(()=> LoginPage());
                      //Get.back();
                      Get.toNamed("/loginPage");
                    },
                  ),
                ),
              ),
              //Link social media
              Center(
                child: Container(
                  width: 300,
                  height: 60,
                  margin: EdgeInsets.only(top: 20, bottom: 60),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          print('pressde');
                        },
                        child: Center(
                          child: Container(
                            width: 50,
                            height: 60,
                            margin: EdgeInsets.only(top: 5, bottom: 5, left: 17, right:10),
                            child: Image.asset('assets/media/google.png'),
                            decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.circular(21),
                              border: Border.all( width: 2, color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          print('pressde');
                        },
                        child: Center(
                          child: Container(
                            width: 50,
                            height: 60,
                            margin: EdgeInsets.only(top: 5, bottom: 5, left:10, right:10),
                            child: Image.asset('assets/media/facebook.png'),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(21),
                              border: Border.all( width: 2, color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          print('pressde');
                        },
                        child: Center(
                          child: Container(
                            width: 50,
                            height: 60,
                            margin: EdgeInsets.only(top: 5, bottom: 5, left:10, right:10),
                            child: Image.asset('assets/media/email1.png'),
                            decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.circular(21),
                              border: Border.all( width: 2, color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          print('pressde');
                        },
                        child: Center(
                          child: Container(
                            width: 50,
                            height: 60,
                            margin: EdgeInsets.only(top: 5, bottom: 5, left:10, right:10),
                            child: Image.asset('assets/media/discord.png'),
                            decoration: BoxDecoration(
                              color: Colors.indigo.shade500,
                              borderRadius: BorderRadius.circular(21),
                              border: Border.all( width: 2, color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


  _signUp() async{
    final user = _auth.createUserWithEmailAndPassword(controller_emailText.text, controller_passText.text);
    if(user != null){
      log("User created successfully");
      Get.toNamed("/DashboardPage");
    }
  }

}