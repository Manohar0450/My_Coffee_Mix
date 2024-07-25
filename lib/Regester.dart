import 'package:flutter/material.dart';
import 'loginpage.dart';
import 'getstarted2.dart';
import 'mainpage.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 890,
              width: double.infinity,
              child: Opacity(
                opacity: 1,
                child: Image.network(
                  'https://i.pinimg.com/474x/b5/0f/e4/b50fe4472332be5d71c778f0b285cd4a.jpg',
                  fit: BoxFit.cover,
                ),
              ),

            ),
          ),

          Positioned(
            top: 40,
            left: 16,
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => two()),
                );
              },
              icon: Icon(
                Icons.arrow_circle_left,
                color: Colors.yellow,
                size: 30,
              ),
            ),
          ),
          Positioned(
            top: 120,
            left: 135,
            child: Text('Sign up',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.white),),
          ),
          Positioned(
            top: 460,
            left: 0,
            right: 0,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
              child: Container(
                height: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50)),
                  // color: Colors.black,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                                           SizedBox(height: 20),
                      _buildTextField('First Name'),
                      SizedBox(height: 15),
                      _buildTextField('Last Name'),
                      SizedBox(height: 15),
                      _buildTextField('Email'),
                      SizedBox(height: 15),
                      _buildTextField('Password', obscureText: true),
                      SizedBox(height: 15),
                      _buildTextField('Confirm Password', obscureText: true),
                      SizedBox(height: 25),
                      Center(
                        child: Container(
                          height: 45,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.orange,
                          ),
                          child: Center(
                            child: Text(
                              'Sign Up',
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have an account?',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Sign()),
                              );
                            },
                            child: Text(
                              ' Sign in',
                              style: TextStyle(fontSize: 16, color: Colors.blue),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField(String hintText, {bool obscureText = false}) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        obscureText: obscureText,
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.black),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 10),
        ),
      ),
    );
  }
}
