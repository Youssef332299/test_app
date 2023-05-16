import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

Future getData () async{
var url = "https://api.escuelajs.co/graphql";

var response = await http.post(url as Uri, body: {'email': 'john@mail.com', 'password': 'changeme'});
print('Response status: ${response.statusCode}');
print('Response body: ${response.body}');

}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Color(0xFF7300FF),
                Color(0xE47300FF),
                Color(0x997300FF),
                Color(0x667300FF),
              ])),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: 300,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 150,
                  ),
                  Text(
                    "Wellcome Back",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.white70),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 100,
                  ),
                  Text(
                    "Please,Log In.",
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w800,
                        color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 14,right: 20,left: 20),
                decoration: BoxDecoration(
                    color: Colors.white,

                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 40,
                          offset: Offset(1, 2))
                    ]),
                height: 60,
                child: TextField(
                    onChanged: (email){
                    //   if(email! ==)
                    },
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(color: Colors.black87),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        // content,
                        prefixIcon: Icon(
                          Icons.email_rounded,
                          color: Colors.indigoAccent,
                        ),
                        hintText: "Email",
                        hintStyle: TextStyle(
                          color: Colors.black45,
                        ))),
              ),//Email
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 14,right: 20,left: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 40,
                          offset: Offset(1, 2))
                    ]),
                height: 60,
                child: TextField(
                  onTap: (){},
                    keyboardType: TextInputType.visiblePassword,
                    style: TextStyle(color: Colors.black87),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        // content,
                        prefixIcon: Icon(
                          Icons.key,
                          color: Colors.indigoAccent,
                        ),
                        hintText: "Password",
                        hintStyle: TextStyle(
                          color: Colors.black45,
                        ))
                ),
              ),//Password
              SizedBox(height: 25,),
              Container(
                width: double.infinity,
                height: 55,
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width / 15),
                child: ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigoAccent,
                      shape: const StadiumBorder(),
                      padding: const EdgeInsets.symmetric(vertical: 14)),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),//LogIn
              SizedBox(
                height: 35,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    height: 2,
                    width: 80,
                    color: Colors.black12,
                  ),
                  Text(
                    "   Or Sign up With Account  ",
                    style: TextStyle(color: Colors.black45),
                  ),
                  Container(
                    height: 2,
                    width: 80,
                    color: Colors.black12,
                  ),
                ],
              ),

              SizedBox(height: 25,),
              Container(
                width: double.infinity,
                height: 60,
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width / 15),
                child: ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigoAccent,
                      shape: const StadiumBorder(),
                      padding: const EdgeInsets.symmetric(vertical: 14)),
                  child: const Text(
                    "Create Account",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),//Create ACCOUNT
            ],
          ),
        ),
      ),
    );
  }
}
