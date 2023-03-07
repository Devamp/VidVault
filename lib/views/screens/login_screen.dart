
import 'package:flutter/material.dart';
import 'package:vidvault/constants.dart';
import 'package:vidvault/views/widgets/text_input_feild.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text(
          'VidVault', 
          style: TextStyle(
            fontSize: 65, 
            color: buttonColor, 
            fontWeight: FontWeight.w900,
          )
        ),

        const Text(
        'Share your Vault',
        style: TextStyle(
            fontSize: 20, 
            fontWeight: FontWeight.w700,
            color: Colors.black),
            
        ),

        const SizedBox(height: 25,),

        Container(

          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: TextInputField(
            controller: emailController,
            labelText: 'Email',
            icon: Icons.email_outlined,
          )
        ),

        const SizedBox(height: 25,),

        Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: TextInputField(
            controller: passwordController,
            labelText: 'Password',
            icon: Icons.lock,
            isObscure: true,
          )
        ),

        const SizedBox(height: 30,),

        Container(
          width: MediaQuery.of(context).size.width-40,
          height: 50,
          decoration: BoxDecoration( color: buttonColor,
          borderRadius: BorderRadius.all(Radius.circular(5))),
          child: InkWell(
            onTap: () { // on click function for login button
              print('Login User');
            },
            child: const Center (
              child: Text(
                'Login',
                style: TextStyle(
                color: Colors.white,
                fontSize: 30, 
                fontWeight: FontWeight.w700

                ))
            ),
          )
        ),

        const SizedBox(height: 30,),

        Text('Dont have an account? Sign up', style: TextStyle(fontSize: 15 , color: Colors.teal),)

        
      ]),
      
      )
    );

  }
}