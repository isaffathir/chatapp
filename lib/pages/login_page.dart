import 'package:chatapp/components/my_button.dart';
import 'package:chatapp/components/my_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool obscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: SizedBox(
              width: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Logo
                  Icon(
                    CupertinoIcons.chat_bubble_2,
                    size: 120,
                    color: Colors.grey[800],
                  ),
                  // Welcome message
                  Text(
                    'M I N I M A L',
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 20,
                      fontFamily: 'Poppins',
                    ),
                  ),

                  const SizedBox(
                    height: 30,
                  ),

                  // email
                  MyTextField(
                    controller: emailController,
                    hintText: "Email",
                  ),

                  const SizedBox(
                    height: 10,
                  ),
                  // password
                  MyTextField(
                    controller: passwordController,
                    hintText: "Password",
                    obscureText: obscure,
                    suffixIcon: IconButton(
                      icon: Icon(
                        // Based on passwordVisible state choose the icon
                        obscure ? Icons.visibility : Icons.visibility_off,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        setState(() {
                          obscure = !obscure;
                        });
                      },
                    ),
                  ),

                  const SizedBox(
                    height: 30,
                  ),

                  // login button
                  const MyButton(
                    text: "Log in",
                  ),

                  // register
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
