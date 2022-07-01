// ignore_for_file: invalid_language_version_override

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';
// @dart=2.9

var name = "Saurabh";

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async{
    if (_formKey.currentState!.validate()) {
      
  
        setState(() {
                              changeButton = true;
                            });
                            await Future.delayed(const Duration(seconds: 1));
                            await Navigator.pushNamed(
                              
                              context, MyRoutes.homeRoute
                              );
                              setState(() {
                              changeButton = false;
                            });
                              }
  }
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child:Form( 
            key: _formKey,
          child: Column(
            children: [
              Image.asset(
                'assets/images/undraw_Login_re_4vu2.png',
                fit: BoxFit.contain,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Welcome $name",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username",
                      ),
                      validator:(value){
                        if (value!.isEmpty) {
                          return "Username cannot be empty.";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },

                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: "Password",
                        hintText: "Enter Your Password",
                      ),
                      validator:(value){
                        if (value!.isEmpty) {
                          return "Password  cannot be empty.";
                        }
                        else if(value.length < 6){
                          return "Password length should be atleast 6";
                        }
                        return null;
                      }
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                    // ElevatedButton(
                    //     style: TextButton.styleFrom(
                    //       minimumSize: const Size(120, 40),
                    //     ),
                    //     onPressed: () {
                    //       // ignore: avoid_print
                    //       Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //     },
                    //     child: const Text("Login")),
                    Material(
                      color: Colors.deepPurple,
                      // shape: changeButton ? BoxShape.circle : BoxShape.rectangle,
                      borderRadius:
                          BorderRadius.circular(changeButton ? 50 : 5),

                      child: InkWell(
                          onTap: ()=>moveToHome(context),
                          child: AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            width: changeButton ? 50 : 100,
                            height: 50,
                            alignment: Alignment.center,
                            child: changeButton
                                ? const Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : const Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                          )),
                    )
                  ],
                ),
              )
            ],
          ),
          )
        ));
  }
}
