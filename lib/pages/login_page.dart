import 'package:flutter/material.dart';

import '../bg_image.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: Stack(
        fit:StackFit.expand, //to cover full space
        children:[
          BgImage(),
          Center(
            child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
            child: Card(
              child: Column(
                children: [
                  Form(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: "Enter Username", labelText: "Username"),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: "Enter Password", labelText: "Password"),
                        ),
                      ]),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
              child: Text('Sign In'),
              onPressed: () {
             
              // Navigator.push(
              //   context, MaterialPageRoute(builder: (context)=> Homepage()));

              // },

              // 2nd way of navigation
              // first defined routes in hompg.dart then this
            
            Navigator.pushNamed(context, '/home');
              },
              style: ElevatedButton.styleFrom(
                    primary: Colors.purple,
                    
                    textStyle: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold)),
),
                ),
                ],
              ),
            ),
        ),
      ),
          ),
          
        ]
      )
    );
  }
}
