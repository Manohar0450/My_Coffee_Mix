import 'dart:async';
import 'package:flutter/material.dart';
import 'review.dart';
// import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class payment extends StatefulWidget {
  const payment({super.key});

  @override
  State<payment> createState() => _homeState();
}

class _homeState extends State<payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      appBar: AppBar(

        backgroundColor: Colors.white,
        title: Text('                  Payments',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
        leading: Icon(Icons.arrow_circle_left,color: Colors.orange,),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 10,),
                Text('     Payments method',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
              ],
            ),
            SizedBox(height: 45,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 20,),
                  GestureDetector(onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>paying()));
                  },
                    child: CircleAvatar(
                      radius: 55,
                      backgroundColor: Colors.black,
                      backgroundImage: NetworkImage('https://st1.latestly.com/wp-content/uploads/2022/11/unnamed-2022-11-09T181714.003.jpg'),

                    ),
                  ),
                  SizedBox(width: 10,),
                  GestureDetector(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>paying()));},
                    child: CircleAvatar(
                      radius: 55,
                      backgroundColor: Colors.black,
                      backgroundImage: NetworkImage('https://i.pinimg.com/236x/60/5a/bd/605abdb7af3405c6b20a426b1e128322.jpg'),
                    ),
                  ),
                  SizedBox(width: 10,),
                  GestureDetector(
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>paying()));},
                    child: CircleAvatar(
                      radius: 55,
                      backgroundColor: Colors.black,
                      backgroundImage: NetworkImage('https://i.pinimg.com/236x/e9/9c/11/e99c1127e426501bddeb9968ffa99223.jpg'),
                    ),
                  ),
                  SizedBox(width: 10,),
                  GestureDetector(
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>paying()));},
                    child: CircleAvatar(
                      radius: 55,
                      backgroundColor: Colors.black,
                      backgroundImage: NetworkImage(
'https://i.pinimg.com/236x/17/3d/b7/173db71d21d55f207c562cda016319fa.jpg',
                      ),
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 60,),
            Row(
              children: [
                SizedBox(width: 33),
                Text('Card Details',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
              ],
            ),
            // Text('Debit card',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
            // SizedBox(height: 30,),
            SizedBox(height: 20,),
            SingleChildScrollView(scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 15,),

                  GestureDetector(onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>axis()));
                  },
                    child: Container(
                      height:200 ,
                      width: 340,
                      decoration: BoxDecoration(color: Colors.yellow,borderRadius: BorderRadius.all(Radius.circular(10)),image: DecorationImage(image: NetworkImage('https://www.paisabazaar.com/wp-content/uploads/2019/10/Axis-Bank-PRIDE-SIGNATURE-Credit-Card.png'),fit: BoxFit.cover)),
                    ),
                  ),
                  SizedBox(width: 20,),
                  // SizedBox(height:20,),
                  // // Text('Credit card',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                  // SizedBox(height: 30,),
                  GestureDetector(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>debit()));},
                    child: Container(
                      height:200 ,
                      width: 340,
                      decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.all(Radius.circular(10)),image:DecorationImage(image: NetworkImage('https://images.fintra.co.in/cms/axis-bank-ace-credit-card.jpeg'),fit: BoxFit.cover)),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 85,),

            SingleChildScrollView(scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Container(
                    height: 200,
                    width:360,
                    decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.all(Radius.circular(30)),image: DecorationImage(image: NetworkImage('https://i.pinimg.com/564x/37/11/e9/3711e948384f4552f709ccac7c431cb1.jpg'),fit: BoxFit.cover)),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 200,
                    width:360,
                    decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.all(Radius.circular(30),),image: DecorationImage(image: NetworkImage('https://i.pinimg.com/564x/4d/b5/7b/4db57b15aaa7772646b900220454f4d1.jpg'),fit: BoxFit.cover)),
                  ),
                ],
              ),
            ),




            // Row(
            //   children: [
            //     SizedBox(width: 35,),
            //     Text('Net Banking',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
            //   ],
            // ),
            //
            // SizedBox(height:25,),
            //     Container(
            //       height: 180,
            //       width: 320,
            //       decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.all(Radius.circular(10)),image:DecorationImage(image: NetworkImage('https://th.bing.com/th/id/OIP.mUXg4lM86BTYfZuQyrSMyAAAAA?rs=1&pid=ImgDetMain'),fit: BoxFit.cover)),
            //
            //     )





            // SizedBox(height: 351,),
            // Container(height: 180,width: double.infinity,decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 3),borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))),)
          ],
        ),
      ),
    );
  }
}
class axis extends StatelessWidget {
  const axis({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Debit',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
      leading: Icon(Icons.arrow_circle_left,color: Colors.orange,),
      ),
      body: SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: 50,),
            Row(
              children: [
                Text('         Debit card number',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
              ],
            ),
            SizedBox(height: 5,),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 3),borderRadius: BorderRadius.all(Radius.circular(10))),
                hintText: 'XXXX   XXXX  XXXX',
                hintStyle: TextStyle(color: Colors.black),
                prefixIcon: Icon(Icons.search,color: Colors.white,),
              ),),
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                Text('         Card holders name',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
              ],
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 3),borderRadius: BorderRadius.all(Radius.circular(10))),
                hintText: 'Enter name',
                hintStyle: TextStyle(color: Colors.black),
                prefixIcon: Icon(Icons.search,color: Colors.white,),
              ),),
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                Text('           Expiry date',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
              ],
            ),

            SizedBox(height: 15,),

            Padding(
              padding: const EdgeInsets.only(left: 50,right: 230),
              child: TextField(decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 3),borderRadius: BorderRadius.all(Radius.circular(10))),
                hintText: 'DD/MM',
                hintStyle: TextStyle(color: Colors.black),
                prefixIcon: Icon(Icons.search,color: Colors.white,),
              ),),
            ),
            SizedBox(height:25,),
            Row(
              children: [
                Text('             CVV',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
              ],
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 50,right: 270),
              child: TextField(decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 3),borderRadius: BorderRadius.all(Radius.circular(10))),
                hintText: 'xxx',
                hintStyle: TextStyle(color: Colors.black),
                prefixIcon: Icon(Icons.search,color: Colors.white,),
              ),),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Text('      Enter Mobile number',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
              ],
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 3),borderRadius: BorderRadius.all(Radius.circular(10))),
                hintText: 'XXXXXXXXXX',
                hintStyle: TextStyle(color: Colors.black),
                prefixIcon: Icon(Icons.search,color: Colors.white,),
              ),),
            ),
            SizedBox(height: 10,),

            Row(
              children: [
                Text('     Total Amount',style: TextStyle(fontSize: 20,color: Colors.purple,fontWeight: FontWeight.bold),),
                SizedBox(width: 180,),
                Text('-/650',style: TextStyle(fontSize: 20,color: Colors.purple,fontWeight: FontWeight.bold),)

              ],
            ),
            SizedBox(height: 50,),
            GestureDetector(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>paying()));},
              child: Container(
                height: 70,
                width: 180,
                decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30)),color: Colors.purple),
                child: Center(child: Text('Pay',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 25))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class debit extends StatefulWidget {
  const debit({super.key});

  @override
  State<debit> createState() => _debitState();
}

class _debitState extends State<debit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,

        title: Text('Credit',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
      ),
      body: SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: 50,),
            Row(
              children: [
                Text('         Credit card number',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
              ],
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 3),borderRadius: BorderRadius.all(Radius.circular(10))),
                hintText: 'XXXX   XXXX  XXXX',
                hintStyle: TextStyle(color: Colors.black),
                prefixIcon: Icon(Icons.search,color: Colors.white,),
              ),),
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                Text('         Card holders name',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
              ],
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 3),borderRadius: BorderRadius.all(Radius.circular(10))),
                hintText: 'Enter name',
                hintStyle: TextStyle(color: Colors.black),
                prefixIcon: Icon(Icons.search,color: Colors.white,),
              ),),
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                Text('           Expiry date',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
              ],
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 50,right: 230),
              child: TextField(decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 3),borderRadius: BorderRadius.all(Radius.circular(10))),
                hintText: 'DD/MM',
                hintStyle: TextStyle(color: Colors.black),
                prefixIcon: Icon(Icons.search,color: Colors.white,),
              ),),
            ),
            SizedBox(height:25,),
            Row(
              children: [
                Text('             CVV',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
              ],
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 50,right: 270),
              child: TextField(decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 3),borderRadius: BorderRadius.all(Radius.circular(10))),
                hintText: 'xxx',
                hintStyle: TextStyle(color: Colors.black),
                prefixIcon: Icon(Icons.search,color: Colors.white,),
              ),),
            ),
            SizedBox(height: 25,),
            Row(
              children: [
                Text('          Enter mobie number',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 3),borderRadius: BorderRadius.all(Radius.circular(10))),
                hintText: 'XXXXXXXXXX',
                hintStyle: TextStyle(color: Colors.black),
                prefixIcon: Icon(Icons.search,color: Colors.white,),
              ),),
            ),
            SizedBox(height: 10,),

            Row(
              children: [
                Text('     Total Amount',style: TextStyle(fontSize: 20,color: Colors.purple,fontWeight: FontWeight.bold),),
                SizedBox(width: 180,),
                Text('-/650',style: TextStyle(fontSize: 20,color: Colors.purple,fontWeight: FontWeight.bold),)

              ],
            ),
            SizedBox(height: 50,),
            GestureDetector(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>paying()));},
              child: Container(
                height: 70,
                width: 180,
                decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30)),color: Colors.purple),
                child: Center(child: Text('Pay',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 25))),
              ),
            ),

          ],
        ),

      ),

    );
  }
}


class paying extends StatefulWidget {
  const paying({super.key});

  @override
  State<paying> createState() => _payingState();
}
class _payingState extends State<paying> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 2),() {
      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>sucess()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Center(
        child:  Lottie.network(
'https://lottie.host/d81e4144-1220-4c74-b46e-abed23e35f95/erdC5MJ8eh.json'
            ,width: 500,height: 300),
      ),
    );
  }
}

class sucess extends StatefulWidget {
  const sucess({super.key});

  @override
  State<sucess> createState() => _sucessState();
}

class _sucessState extends State<sucess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body:SingleChildScrollView(
        child: Column(
            children: [
              SizedBox(height: 150,),
              Center(child: Text('  Payment\nSuccessful',style: TextStyle(fontSize: 55,color: Colors.black,fontWeight: FontWeight.bold),)),
              SizedBox(height: 50,),
              // Row(
              //   children: [
              //     SizedBox(width: 160,),
              //     CircleAvatar(
              //       radius:50,
              //       backgroundColor: Colors.black,
              //       backgroundImage: NetworkImage('',),
              //     ),
              //
              //   ],
              // ),
              Lottie.network(
        'https://lottie.host/0bd2fdc0-9ac1-4655-920a-f0bac4008f52/UGSEENDQ4F.json'
                      ,width: 200,height: 300),
        
              SizedBox(height: 100,),
              GestureDetector(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>home1()));
              },
                child: Container(
                  height: 80,
                  width: 180,
                  decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Center(child: Text('Done',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),)),
                ),
              )
            ]
        ),
      ),
    );
  }
}

