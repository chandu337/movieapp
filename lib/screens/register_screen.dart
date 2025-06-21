import 'package:flutter/material.dart';
import 'package:ottapp/screens/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController placeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("User Registeration",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
      ),
      body: Center(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Text("Welcome User",style: TextStyle(color: Colors.black38,fontWeight: FontWeight.bold,fontSize: 28),),
                SizedBox(height: 20,),
                TextFormField(controller: nameController, decoration: InputDecoration(hintText:"Enter your Email", labelText: "Email",border: OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(10)),borderSide: BorderSide(color: Colors.black)))),
                SizedBox(height: 10,),
                TextFormField(controller: emailController,decoration: InputDecoration(hintText:"Enter your Name", labelText: "Name",border: OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(10)),borderSide: BorderSide(color: Colors.black)))),
                SizedBox(height: 10,),
                TextFormField(controller: passwordController, decoration: InputDecoration(hintText:"Enter your Password", labelText: "Password",border: OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(10)),borderSide: BorderSide(color: Colors.black)))),
                SizedBox(height: 10,),
                TextFormField(controller: placeController, decoration: InputDecoration(hintText:"Enter your Place", labelText: "Place",border: OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(10)),borderSide: BorderSide(color: Colors.black)))),
                SizedBox(height: 10,),
                ElevatedButton(onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginScreen()));
                  }, 
                  child: Text("Register")
                )

              ],
              
            ),
          ),
        ),
      ),
      
    );
  }
}