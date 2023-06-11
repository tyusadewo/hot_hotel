import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'goToNavigation.dart';


class loginDesktop extends StatefulWidget {
  const loginDesktop({Key? key}) : super(key: key);

  @override
  State<loginDesktop> createState() => _loginDesktopState();
}

class _loginDesktopState extends State<loginDesktop> {
  
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Row(
      // mainAxisAlignment: MainAxisAlignment.start,
      //crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Row(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       crossAxisAlignment: CrossAxisAlignment.end,
        //   children: [
       
        Expanded(
          //<-- Expanded widget
          child: Container(
            constraints: const BoxConstraints(maxWidth: 21),
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                //const SizedBox(height: 35),
                ClipRRect(
                  child: Image.asset(
            'assets/images/tentrem.png',
            height: 120, width: 320,
            fit: BoxFit.fitHeight)
                ),
                const SizedBox(height: 38),
                // const Text(
                //   'Welcome!',
                //   style: TextStyle(
                //       fontSize: 20,
                //       color: Colors.black,
                //       fontWeight: FontWeight.bold),
                // ),
                const SizedBox(height: 8),
                const Text(
                  'Login to your account', textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                const SizedBox(height: 35),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: 'Enter your Username',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.portrait),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Enter your password',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.key),
                    suffixIcon: Icon(Icons.remove_red_eye),
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // TextButton(
                    //     onPressed: () {}, child: const Text('Forgot password?'))
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff4B49AC)),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
context,
              MaterialPageRoute(builder: (context) => const gotoNavigation()),

                      );
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                // const SizedBox(height: 20),
                // Container(
                //   height: 40,
                //   width: double.infinity,
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(100),
                //       color: Color(0xff4B49AC)),//Color.fromARGB(255, 199, 100, 8)),
                //   child: MaterialButton(
                //     onPressed: () {},
                //     child: const Text(
                //       'Continue with google',
                //       style: TextStyle(
                //         fontSize: 18,
                //         fontWeight: FontWeight.bold,
                //         color: Colors.white,
                //       ),
                //     ),
                //   ),
                // ),
                // const SizedBox(height: 30),
                // const Divider(
                //   height: 30,
                //   color: Colors.black,
                // ),
                // const SizedBox(height: 10),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Text(
                //       "Don't have an Account?",
                //       style: TextStyle(color: Colors.black.withOpacity(0.7)),
                //     ),
                //     TextButton(
                //         onPressed: () {}, child: const Text('Register Account'))
                //   ],
                // ),
               // Column(

                //),

              ],
            ),
          ),
        ),
          // ],
        // ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
          image: AssetImage('assets/images/bluehotel.jpg'),
          //NetworkImage('https://images.unsplash.com/photo-1547665979-bb809517610d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80'),
          fit: BoxFit.cover
          ), ), ), ),
      ],
    );
  }
}