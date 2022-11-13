//! Cubit Blocning mukammallashtirilgan varianti 
//! Blocda ikkita, Cubitda esa uchta stat bilan boshqariladi

///? Cubitda 3 ta state(sahifa) bo'ladi
///?1 UI qismi uchun, 2. Statelarni boshqarish uchun, 3. Cubit qismi uchun

//! Bloc Cubit - Lazy  O'zimiz ishga tushurishni kutadi 

import 'package:cubit_example/cubit/users_cubit_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:const  UsersView(),
    );
  }
}
