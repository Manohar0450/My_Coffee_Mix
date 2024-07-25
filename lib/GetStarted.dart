import 'package:flutter/material.dart';
import 'getstarted2.dart';
import 'mainpage.dart';
class Getstarted extends StatefulWidget {
  const Getstarted({super.key});
  @override
  State<Getstarted> createState() => _GetstartedState();
}
class _GetstartedState extends State<Getstarted> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Stack(
            children:[ Container(
                height:890,
                 width:500,
              child:Image.network('https://img.freepik.com/premium-photo/cup-cappuccino-with-latte-art-top-view-ai-generative_931878-712551.jpg?w=360',fit: BoxFit.cover,),
            ),
              Padding(
                padding: const EdgeInsets.only(left: 80,top: 200),
                child: Text('Coffee Shop',style: TextStyle(color: Colors.white,fontSize: 50,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 670),
                child: Text('Feeling Low? Take a Sip of Coffee',style: TextStyle(color: Colors.white,fontSize: 26,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>two()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 750,left: 80),
                  child: Container(
                    height:80,
                    width:250,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.orange),

                 child: Center(child: Text('Get Start',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Colors.white),)),
                  ),
                ),
              ),
      ]
          )
        ],
      ),
    );
  }
}

