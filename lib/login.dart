import 'package:flutter/material.dart';
import 'package:modubus/commonService.dart';
import 'package:modubus/home.dart';

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController username=TextEditingController();
  TextEditingController password=TextEditingController();
  login(){
if(username.text=="admin"&&password.text=="admin"){
 Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
}
  }
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: PRIMARY_COLOR,
      body: Center(
        child: Card(
          color: Colors.white,
          child: Container(
            height: size.height*0.50,
            width: size.width*(size.width>700?0.30:0.60),
             color: Colors.white,
             child: Padding(
               padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 16),
               child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Login User",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                  // const SizedBox(
                  //   height: 25,
                  // ),

                  Column(
                    children: [
                      TextFormField(
                        controller: username,
                        decoration: customDecoration("User Name"),
                      ),
                       const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: password,
                    obscureText: true,
                    decoration: customDecoration("Password"),
                  ),
                    ],
                  ),
                  
                  
                  MaterialButton(
            height:  44,
            color:PRIMARY_COLOR,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
                ),
            onPressed: login,
            child: Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               
                Text(
                  "Login",
                  style: STYLE_SEMI_14,
                ),
              ],
            )),
          )
                ],
               ),
             ),
          ),
        ),
      ),
      
    );
  }
}