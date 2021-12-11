import 'dart:js';

import 'package:flutter/material.dart';
import 'package:myapp/pages/home_page.dart';
import 'package:myapp/pages/login_page.dart';

void main(){
  runApp( MaterialApp(
    title:"Awesome App",
    home:const LoginPage(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),

    //to be used for 2nd way of navigation in login_page.dart only
    routes: {
      '/login':(context)=>LoginPage(),
      '/home':(context)=>Homepage()
    },
  ),
  );

}
















