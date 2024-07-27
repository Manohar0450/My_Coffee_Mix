import 'package:flutter/material.dart';
import 'dart:ui';
import 'Regester.dart';
import 'loginpage.dart';
class two extends StatefulWidget {
  const two({super.key});
  @override
  State<two> createState() => _LogInState();
}
class _LogInState extends State<two> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 900,
            child: Image.network(
'https://i.pinimg.com/236x/55/14/54/551454b20e9c2df379eb2928625a4efc.jpg'
              ,fit: BoxFit.cover,),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
              child: Container(


                color: Colors.black.withOpacity(0),
              ),
            ),
          ),
          Column(

            children: [
              SizedBox(height: 80,),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text('Coffee',style: TextStyle(fontSize: 35,color: Colors.white,fontWeight: FontWeight.w500),),
              ),
              SizedBox(height: 610,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      width: 150,
                    height: 70,

                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.black26,border: Border.all(color: Colors.orange,width: 3)),
                      child: GestureDetector(onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()));
                      },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 0,left: 15),
                          child: Row(
                            children: [
                              Text('Sign up',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                              SizedBox(width: 5,),
                              Icon(Icons.arrow_forward_sharp)
                            ],
                          ),

                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: Container(
                      width: 150,
                      height: 70,
                      decoration: BoxDecoration(border: Border.all(color: Colors.orange,width: 3),borderRadius: BorderRadius.circular(30)),

                      child: GestureDetector(onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Sign()));
                      },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 0,left: 20),
                          child: Row(
                            children: [
                              Text(' Sign in',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                              SizedBox(width: 5,),
                              Icon(Icons.arrow_forward_sharp)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
//               Padding(
//                 padding: const EdgeInsets.only(left: 80),
//                 child: Container(
//                   width: 200,
//                   height: 70,
// decoration: BoxDecoration(border: Border.all(color: Colors.white),borderRadius: BorderRadius.circular(30)),
//
//                   child: GestureDetector(onTap:(){
//                     Navigator.push(context, MaterialPageRoute(builder: (context)=>Sign()));
//                   },
//                     child: Padding(
//                       padding: const EdgeInsets.only(top: 15,left: 50),
//                       child: Text(' Sign in',style: TextStyle(fontSize: 25,color: Colors.orange,fontWeight: FontWeight.bold),),
//                     ),
//                   ),
//                 ),
//               ),
            ],
          )
        ],
      ),
    );
  }
}
