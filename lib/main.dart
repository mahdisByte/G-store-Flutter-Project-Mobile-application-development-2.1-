import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:g_store/Provider/cart_provider.dart';
import 'package:g_store/Provider/favourite_provider.dart';
import 'authentication/Login_page.dart';
import 'screens/nav_bar_screen.dart';
import 'package:provider/provider.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
/*
  await Firebase.initializeApp(

      options: const FirebaseOptions(
        apiKey: "AIzaSyD6vywCfOGn5bF2Ex88HdekcQ_E_01dDsU",
        appId: "1:905677068231:android:dc6431554d0267aa086be2",
        messagingSenderId: "905677068231",
        projectId: "fir-test-5-657bc",
      )

  );  */
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)=>MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_)=>CartProvider(),
      ),
      // for favorite
      ChangeNotifierProvider(create: (_)=>FavoriteProvider()),
    ],
    child:  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'G store',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: GoogleFonts.mulishTextTheme(),
      ),
      home: LoginPage(),
    ),
  );
}

