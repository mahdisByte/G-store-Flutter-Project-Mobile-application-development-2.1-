
import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';

class AuthService {

  final _auth = FirebaseAuth.instance;

  Future<User?>createUserWithEmailAndPassword(String email, String password) async{

    try{
      final cred = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      return cred.user;
    } catch (e){
      log("Some error occured");
    }
    return null;

  }
  Future<User?>logInWithEmailAndPassword(String email, String password) async{

    try{
      final cred = await _auth.signInWithEmailAndPassword(email: email, password: password);
      return cred.user;
    } catch (e){
      log("Some error occured");
    }
    return null;

  }


  Future<void>signout() async{

    try{
      await _auth.signOut();
    } catch (e){
      log("Some error occured");
    }
    return null;

  }

}