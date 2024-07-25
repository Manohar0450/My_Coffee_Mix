import 'package:flutter/material.dart';
import 'getstarted2.dart';
import 'Regester.dart';
import 'mainpage.dart';

class Sign extends StatefulWidget {
  const Sign({super.key});

  @override
  State<Sign> createState() => _SignState();
}

class _SignState extends State<Sign> {
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
              width: 430,
              child: Opacity(
                opacity: 0.6,
                child: Image.network(
                  'https://i.pinimg.com/564x/92/fe/2d/92fe2ddc90cad3d25ca19bcb05e4306e.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),

          ),

          Positioned(
            top: 30,
            left: 20,
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => two()));
              },
              child: Icon(
                Icons.arrow_circle_left,
                size: 30,
                color: Colors.orange,
              ),
            ),
          ),
          Positioned(
            top: 150,
            left: 60,
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => two()));
              },
              child: Text(
                'Hi, Welcome Back!✋',
                style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Positioned(
            top: 405,
            right: 0,
            left: 0,
            child: Container(
              height: 530,
              width: 450,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(55)),
                // color: Colors.pink,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 40),
                  // Center(
                  //   child: Text(
                  //     'Sign in',
                  //     style: TextStyle(fontSize: 35, color: Colors.white),
                  //   ),
                  // ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: [
                        Icon(Icons.email, size: 20, color: Colors.white),
                        SizedBox(width: 10),
                        Text(
                          'Email Address:',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: TextField(
                        obscureText: false,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintText: 'Enter Email Address',
                          hintStyle: TextStyle(color: Colors.black),

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: [
                        Icon(Icons.lock_outlined, size: 20, color: Colors.white),
                        SizedBox(width: 10),
                        Text(
                          'Password:',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: TextField(
                        obscureText: true,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintText: 'Enter your password',
                          hintStyle: TextStyle(color: Colors.black),

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 230),
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 30),
                  Center(
                    child: GestureDetector(onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                    },
                      child: Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.orange,
                        ),
                        child: Center(
                          child: Text(
                            'Sign in',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t have an account?',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Signup()),
                            );
                          },
                          child: Text(
                            ' Signup',
                            style: TextStyle(fontSize: 16, color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
