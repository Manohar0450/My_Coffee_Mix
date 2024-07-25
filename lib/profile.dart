import 'package:flutter/material.dart';
import 'package:mycoffeemix/getstarted2.dart';
import 'profile.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _homeState();
}

class _homeState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 890,
                  width: double.infinity,
                  child: Center(child: Column(
                    children: [
                      SizedBox(height:60,),
                      Text('Profile',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                    ],
                  )),
                  decoration: BoxDecoration(gradient: LinearGradient(colors: [Color(0xff44282D),Color(0xff161B27),Color(0xff151A26),Color(0xff0F1621),Color(0xff080F1A)])),
                ),
                Positioned(
                  left:85,
                  top: 130,
                  child: Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(150),),color: Colors.white,image: DecorationImage(image: NetworkImage('https://i.pinimg.com/236x/1f/ef/93/1fef93d9f1249087da491c053878b1f8.jpg'),fit: BoxFit.cover)),

                    // child: Text('Coffee',style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.black),),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(height: 410,),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text('K.Kavya',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50,color: Colors.white),),
                    ),
                    // SizedBox(height: 10,),
                    Text('+91  9876543218',style: TextStyle(fontSize: 20,color: Colors.white),),
                    // SizedBox(height: 10,),
                    // Text('+91  8522830865',style: TextStyle(fontSize: 20,color: Colors.white),),
                    SizedBox(height: 10,),
                    Text('Tata Consuntancly',style: TextStyle(color: Colors.white,fontSize: 15),),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 150),
                      child: Row(
                        children: [
                          Icon(Icons.location_on_sharp,size: 30,color: Colors.white,),
                          SizedBox(width: 15,),
                          Text('Delhi',style: TextStyle(fontSize: 30,color: Colors.white),),

                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 650,),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        child: Row(
                          children: [
                            SizedBox(width: 5,),
                            Container(
                              height: 130,
                              width: 130,
                              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(100)),image: DecorationImage(image: NetworkImage('https://i.pinimg.com/236x/3c/2d/72/3c2d72722d131ade8303be63d11ed3e6.jpg'),fit: BoxFit.cover)),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              height: 130,
                              width: 130,
                              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(100)),image: DecorationImage(image: NetworkImage('https://i.pinimg.com/564x/76/4d/be/764dbe5ce6c97a67ca1af5fef5eb1416.jpg'),fit: BoxFit.cover)),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              height: 130,
                              width: 130,
                              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(100)),image: DecorationImage(image: NetworkImage('https://i.pinimg.com/236x/05/71/8f/05718f6942df05dbac466711fd25943f.jpg'),fit: BoxFit.cover)),
                            ),
                          ],
                        ),
                      ),
                    )

                  ],
                ),

                SingleChildScrollView(scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      SizedBox(height: 900,),
                      Stack(
                        clipBehavior:Clip.none,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 800,
                                width: double.infinity,
                                decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),color: Colors.white,),
                              ),
                            ],
                          ),
                          Positioned(top: -80,
                            left:15,
                            child: Container(
                              height:200,
                              width:380,
                              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30)),color: Colors.brown,image: DecorationImage(image: NetworkImage('https://i.pinimg.com/564x/4b/da/36/4bda3620d81283b17dd145c4e6b05797.jpg'),fit: BoxFit.cover)),
                            ),
                          ),
                          Positioned(top: 180,
                            left: 30,
                            child: GestureDetector(onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>details()));
                            },
                              child: Container(
                                height: 60,
                                width: 350,
                                decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.all(Radius.circular(20))),
                                child: Center(child: Text('Favorite Cofee',style: TextStyle(fontSize: 20,color: Colors.white),)),
                              ),
                            ),

                          ),

                          Positioned(top: 275,
                            left: 30,
                            child:
                            GestureDetector(onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Recent()));
                            },
                              child: Container(
                                height: 60,
                                width: 350,
                                decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.all(Radius.circular(20))),
                                child: Center(child: Text('Recent Orders',style: TextStyle(fontSize: 20,color: Colors.white),)),
                              ),

                            ),
                          ),

                          Positioned(top: 370,
                            left: 30,
                            child: Container(
                              height: 60,
                              width: 350,
                              decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.all(Radius.circular(20))),
                              child: Center(child: GestureDetector(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (MaterialPageRoute)=>two()));
                                  },
                                  child: Text('Logout',style: TextStyle(fontSize: 20,color: Colors.white),))),
                            ),

                          ),
                        ],

                      ),

                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ) ,
    );
  }
}

class details extends StatefulWidget {
  const details({super.key});

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(preferredSize: Size.fromHeight(80), child: AppBar(backgroundColor: Colors.black,
        title: Column(
          children: [
            SizedBox(height: 10,),
            Text('       Favourite Coffee',style: TextStyle(color: Colors.white,fontSize: 25),),
          ],
        ),
      )),
      // backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
            children: [
        
              SizedBox(height: 20,),
              Row(
                children: [
                  SizedBox(width: 100,),
                  Container(
                    height: 220,
                    width: 220,
                    decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.all(Radius.circular(120)),image: DecorationImage(image: NetworkImage('https://i.pinimg.com/564x/cc/75/e5/cc75e552e36f5d17d062977f9f2fdbdc.jpg'),fit: BoxFit.cover)),
        
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Text('Hot Chocolate',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
              // SizedBox(height: 30,),
              SizedBox(height: 80,),
              Row(
                children: [
                  SizedBox(width: 70,),
                  Icon(Icons.local_fire_department_rounded,color: Colors.orange,size: 45,),
                  SizedBox(width: 80,),
                  Icon(Icons.timer,color: Colors.orange,size: 45,),
                  SizedBox(width: 80,),
                  Icon(Icons.star,color: Colors.orange,size: 45,),
                ],
              ),
              SizedBox(height: 5,),
              Row(
                children: [
                  SizedBox(width: 50,),
                  Text('80 Calories',style: TextStyle(color: Colors.orange,fontSize: 20),),
                  SizedBox(width: 40,),
                  Text('20-25',style: TextStyle(color:Colors.orange,fontSize: 20),),
                  // Icon(Icons.timer,color: Colors.yellow,size: 35,),
                  SizedBox(width: 50,),
                  Text('4.3 Rating',style: TextStyle(color:Colors.orange,fontSize: 20),),
                  // Icon(Icons.star,color: Colors.yellow,size: 35,),
                ],
              ),
              SizedBox(height: 50,),
        
        
            ]
        ),
      ),

      //
      // bottomNavigationBar: Container(
      //   height: 90,
      //   width: 500,
      //   decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30),),color: Colors.black),
      //   child: Center(
      //     child:Icon(Icons.favorite,color: Colors.red,size: 30,)
      //   ),
      // ),


    );
  }
}
class Recent extends StatefulWidget {
  const Recent({super.key});

  @override
  State<Recent> createState() => _RecentState();
}

class _RecentState extends State<Recent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('            Recent Orders',style: TextStyle(color: Colors.white),),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Center(child:
            Container(
              height: 280,
              width: 230,
              decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.all(Radius.circular(30)),image: DecorationImage(image: NetworkImage('https://i.pinimg.com/236x/e5/99/53/e59953424f65e8a28519472711a4f4f1.jpg'),fit: BoxFit.cover)),
            )
            ),
            SizedBox(height: 20,),
            Text('Pumpkin Spice Latte',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Icon(Icons.favorite_sharp,color: Colors.red,),
            SizedBox(height: 20,),
            Container(
              height: 280,
              width: 230,
              decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.all(Radius.circular(30)),image: DecorationImage(image: NetworkImage('https://i.pinimg.com/236x/9f/98/d7/9f98d79bf77f8d7d0f85b744ff7ae61d.jpg'),fit: BoxFit.cover)),
            ),
            SizedBox(height: 15,),
            Text('Cappuccino',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
            SizedBox(height: 5,),
            Icon(Icons.favorite_sharp,color: Colors.red,)
        
        
            // Text('-/580',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize:20 ),)
          ],
        ),
      ),
    );
  }
}
class points extends StatefulWidget {
  const points({super.key});
  @override
  State<points> createState() => _pointsState();
}
class _pointsState extends State<points> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('            Points Display',style: TextStyle(color: Colors.white),),
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          // SizedBox(height: 60,),
          // Row(
          //   children: [
          //     SizedBox(width: 30,),
          //     Text('Your points',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
          //     SizedBox(width: 160,),
          //     Text('2300',style: TextStyle(color: Colors.yellow,fontWeight: FontWeight.bold,fontSize: 25),)
          //   ],
          // ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(top: 30,left: 20),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 75,
                  backgroundColor: Colors.red,
                  backgroundImage: NetworkImage('https://i.pinimg.com/236x/3f/07/bf/3f07bf39523f4c8e1b1981edfe1d1c0e.jpg'),
                ),
                SizedBox(width: 5,),
                Text('   Your Points  \n        12,400',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.yellow,fontSize:35),)
              ],
            ),
          ),
          SizedBox(height: 85,),
          Container(
            height: 350,
            width: 350,
            decoration: BoxDecoration(color: Colors.yellow,borderRadius: BorderRadius.all(Radius.circular(30))),
          )










        ],
      ),

    );
  }
}