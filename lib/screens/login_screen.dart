import 'package:flutter/material.dart';
import 'package:ottapp/screens/home_screen.dart';
import 'package:ottapp/screens/register_screen.dart';
import 'package:ottapp/widgets/bottom_nav.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("FilmSpot",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),

      ),
      body: Center(
        child: Card(
          elevation: 8,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: _formkey,
              child: Column(
                children: [
                  Text("Enter Your Details buddy!",style: TextStyle(color: Colors.black38,fontSize: 27,fontWeight: FontWeight.bold),),
                  SizedBox(height: 20,),
                  TextFormField(
                    controller: emailController,
                    validator: (value) {
                      if (value!.isEmpty || value==""){
                        return "Please Enter your Email";
                      }
                    },
                    decoration: InputDecoration(
                      hintText: "Enter your Email",
                      labelText: "Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15)
                        ),
                      )
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    controller: passwordController,
                    validator: (value) {
                      if (value!.isEmpty || value==""){
                        return "Please Enter your Password";
                      }else if(value.length<6){
                        return "Password should consist of 8 characters";
                      }
                    },
                    decoration: InputDecoration(
                      hintText: "Enter your password",
                      labelText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)))),
                  ),
                  SizedBox(height: 10,),
                  ElevatedButton(onPressed: () async{
                    if(_formkey.currentState!.validate()){
                      final prefs = await SharedPreferences.getInstance();
                      await prefs.setBool("isLoggedIn", true);
                      Navigator.of(context).push(MaterialPageRoute(builder:(context) => BottomNav(child:HomePage(),)),);}  
                  }, 
                    child: Text("Submit")
                  ),
                  TextButton(onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> RegisterScreen()));
                    }, 
                    child: Text("Don't have an Account, Register?")
                  )
                ],
              ),
            ),
          ),
        )
      )
    );
  }
}