import 'package:flutter/material.dart';
import 'package:g_store/authentication/firebase_authentcation.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../screens/nav_bar_screen.dart';
import 'Registration_page.dart';
class LoginPage extends StatelessWidget{
  var controller_emailText = TextEditingController();
  var controller_passText = TextEditingController();
  var box = GetStorage();
  Widget build (BuildContext context){
    return Scaffold (
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
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.only(top:2, bottom: 1),
                  child: Image.asset('images/media/logo.png'),
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
              //sign in witting
              Center(
                child: Container(
                  width: 300,
                  height: 40,
                  margin: EdgeInsets.only(top:10, bottom: 10),
                  child: Padding(
                    padding: EdgeInsets.only(top: 1, left:100),
                    child: Text('Sign In', style: TextStyle(fontSize: 25,color:Colors.green.shade200),),
                  ),

                ),
              ),
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
              Container(height: 11,),
              //Password box
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
              //Forget password box
              Center(
                child: Container(
                  width: 300,
                  height: 40,
                  margin: EdgeInsets.only(top:2),
                  child: TextButton(
                    child: Text('Forget password?'),
                    onPressed: (){
                      print('Pressed');
                    },
                  ),
                ),
              ),
              //login button
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 10, bottom: 5),

                  child: ElevatedButton(

                    style: ElevatedButton.styleFrom(foregroundColor: Colors.yellow ,backgroundColor: Colors.blue , fixedSize: Size(300, 50)),
                    child: Text("Sign In",style: TextStyle(fontSize: 20),),
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(
                            builder: (context)=>BottomNavBar(),
                          )
                      );
                      //Get.toNamed("/RegistrationPage");
                      /*
                      String userEmail = controller_emailText.text.toString();
                      String userPassword = controller_passText.text.toString();
                      print("Email: $userEmail, Pass: $userPassword");
                      if(GetUtils.isEmail(controller_emailText.text)){
                        box.write("name", controller_emailText.text);
                        Get.snackbar("Login", "Login Successfull",
                            snackPosition: SnackPosition.BOTTOM,
                            //colorText: Colors.white,
                            backgroundColor: Colors.white,
                        );
                      }
                      else{
                        box.write("name", controller_emailText.text);
                        Get.snackbar("Login", "Login UnSuccessfull", snackPosition: SnackPosition.BOTTOM);
                      }*/

                    },
                  ),
                ),
              ),
              //Signup button
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 5, bottom: 10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(foregroundColor: Colors.yellow ,backgroundColor: Colors.blue , fixedSize: Size(300, 50)),
                    child: Text("Sign Up",style: TextStyle(fontSize: 20),),
                    onPressed: (){
                      print("button pressed");

                      Navigator.push(context,
                          MaterialPageRoute(
                            builder: (context)=>RegistrationPage(),
                          )
                      );

                      // Get.to(()=> RegistrationPage());
                     // Get.toNamed("/RegistrationPage");
                      //Navigator.push(context,
                          //MaterialPageRoute(builder: (context)=>RegistrationPage()));
                    },
                  ),
                ),
              ),
              //Link social media
              Center(
                child: Container(
                  width: 300,
                  height: 60,
                  margin: EdgeInsets.only(top: 10, bottom: 5),
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
                            child: Image.asset('images/media/google.png'),
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
                            child: Image.asset('images/media/facebook.png'),
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
                            child: Image.asset('images/media/email1.png'),
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
                            child: Image.asset('images/media/discord.png'),
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
}