import 'package:flutter/material.dart';
class home1 extends StatefulWidget {
  const home1({super.key});

  @override
  State<home1> createState() => _home1State();
}
class _home1State extends State<home1> {
  double x = 0;
  void y(double rating) {
    setState(() {
      x = rating;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                  children: [
                    Container(
                        height: 890,
                        width: double.infinity,
                        color: Colors.orange
                    ),
                    Positioned(
                      bottom: 0,
                      child:
                      Container(
                        height: 500,
                        width: 420,
                        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topRight: Radius.circular(50),topLeft: Radius.circular(50))),
                        child: Column(
                          children: [
                            SizedBox(height: 90,),
                            Row(
                              children: [
                                SizedBox(width: 160,),
                                Text('Rate us..',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                SizedBox(width: 50,),
                                IconButton(
                                  icon: Icon(Icons.star, size: 40.0, color: x>= 1 ? Colors.yellow : Colors.grey),
                                  onPressed: () =>y(1),
                                ),
                                SizedBox(width: 10,),
                                IconButton(
                                  icon: Icon(Icons.star, size: 40.0, color: x >= 2 ? Colors.yellow : Colors.grey),
                                  onPressed: () => y(2),
                                ),
                                SizedBox(width: 10,),
                                IconButton(
                                  icon: Icon(Icons.star, size: 40.0, color: x >= 3? Colors.yellow : Colors.grey),
                                  onPressed: () =>y(3),
                                ),
                                SizedBox(width: 10,),
                                IconButton(
                                  icon: Icon(Icons.star, size: 40.0, color: x>=4 ? Colors.yellow : Colors.grey),
                                  onPressed: () =>y(4),
                                ),
                                SizedBox(width: 10,),
                                IconButton(
                                  icon: Icon(Icons.star, size: 40.0, color: x>=5 ? Colors.yellow : Colors.grey),
                                  onPressed: () =>y(5),
                                ),
                              ],
                            ),
                            SizedBox(height: 70,),
                            Text('Any feedback',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
          
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 3),borderRadius: BorderRadius.all(Radius.circular(10))),
                                hintText: 'Any Description',
                                hintStyle: TextStyle(color: Colors.black),
                                prefixIcon: Icon(Icons.search,color: Colors.white,),
                              ),),
                            ),

                            SizedBox(height: 30,),
                            GestureDetector(onTap: (){
                              Navigator.push(context,MaterialPageRoute(builder:(context)=>next()));
                            },
                              child: Container(
                                height: 60,
                                width: 170,
                                decoration: BoxDecoration(color:Colors.orange,borderRadius: BorderRadius.all(Radius.circular(50))),
                                child: Center(
                                  child: Text(''
                                      'Submit',style: TextStyle(color:Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 120,
                      top: 280,
                      child: Container(
                        height: 180,
                        width: 180,
                        decoration: BoxDecoration(color: Colors.red,image: DecorationImage(image: NetworkImage('https://i.pinimg.com/236x/a3/45/04/a34504aefdc20cc2f776d978d59e990f.jpg',),fit: BoxFit.cover),borderRadius: BorderRadius.circular(120)),
                      ),
                    ),
                  ]
              ),
            ],
          ),
        )
    );
  }
}




class next extends StatefulWidget {
  const next({super.key});

  @override
  State<next> createState() => _nextState();
}

class _nextState extends State<next> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: [
            Container(
              height: 890,
              width: double.infinity,
              color: Colors.orange,
              child: Column(
                children: [
                  SizedBox(height: 50,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: GestureDetector(onTap: (){Navigator.push(context,MaterialPageRoute(builder:(context)=>home1()));
                        },
                            child: Icon(Icons.arrow_back,size: 35,color: Colors.white,)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              child:
              Container(
                  height: 500,
                  width: 420,
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30))),
                  child:  Column(
                    children: [
                      SizedBox(height: 130,),
                      IconButton(onPressed: (){}, icon: Icon(Icons.thumb_up,size: 80,color: Colors.orange,)),
                      SizedBox(height: 40,),
                      Row(
                        children: [
                          SizedBox(width: 45,),
                          Text('Thank you for Visiting us!',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),
                          SizedBox(width: 5,),
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.red,
                            backgroundImage: NetworkImage('https://i2.wp.com/www.papertraildesign.com/wp-content/uploads/2017/06/Happy.png'),
                          )
                        ],
                      ),
                      SizedBox(height: 50,),

                    ],
                  )
              ),
            ),
            Positioned(
              left: 120,
              top: 280,
              child: Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(color: Colors.red,image: DecorationImage(image: NetworkImage('https://i.pinimg.com/236x/a3/45/04/a34504aefdc20cc2f776d978d59e990f.jpg',),fit: BoxFit.cover),borderRadius: BorderRadius.circular(120)),

              ),
            ),
          ]
      ),
    );
  }
}