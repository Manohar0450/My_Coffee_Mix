import 'package:flutter/material.dart';

class Machine extends StatelessWidget {
  const Machine({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: Colors.black,
      // appBar: AppBar(),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 500,
                width: 410,
                child: Image.network(
'https://i.pinimg.com/236x/0f/c2/e6/0fc2e6e848b19c2d8a9a565bcbcfdc83.jpg'
                  ,fit: BoxFit.cover,),
              ),
              Positioned(
                left: 10,
                top: 30,
                child: IconButton(
                  icon: Icon(Icons.arrow_circle_left, color: Colors.white, size: 30),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              // Positioned(
              //   top: 30,right: 90,
              //   child: Container(
              //     child: Text('Coffee Machine', style: TextStyle(fontSize: 30, color: Colors.white),),
              //   ),
              // ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0,right: 10.0,top: 10.0),
            child: Text(
              'A coffee machine is an appliance designed\n'
                  'to  brew coffee  by heating water passing it \nthrough coffee grounds.It typically features  a water reservoir, a heating  '
                  'element,and  a\nbrew  basket . Some  machines  include  as \nadditional features like built-in grinders and \n'
                  'milk frothers .The  primary  types of  coffee\nmachines  include drip  coffee  espresso  a machines,and single-serve brewers.Regular\n'
                  'maintenance , such descaling and  cleaning \nis essential to ensure optimal performance.',
              style: TextStyle(fontSize: 20, color: Colors.white),),
          ),
        ],
      ),
    );
  }
}

class Mugs extends StatelessWidget {
  const Mugs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 450,width:420,
                child: Image.network('https://i.pinimg.com/236x/fb/d2/56/fbd2565f32997f64fb6c54b9afb0e95b.jpg',fit: BoxFit.cover,),
              ),
              Positioned(
                left: 10,
                top: 30,
                child: IconButton(
                  icon: Icon(Icons.arrow_circle_left, color: Colors.white, size: 30),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              // Positioned(
              //   top: 30,
              //   right: 90,
              //   child: Center(
              //     child: Container(
              //       child: Text('Coffee Mugs', style: TextStyle(fontSize: 30, color: Colors.white),),
              //     ),
              //   ),
              // ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0,left: 5.0,right: 10.0),
            child: Text('Coffee  cups typically made  from  ceramic,\nporcelain, glass, stainless steel , or  plastic.\nThey come a in various designs  and  sizes\nranging from 6 to 16 ounces, with  handles\n'
                'for easy grip.Many feature unique patterns\nand colors, reflecting personal style. Some\nare  insulated  keep  beverages hot  longer.\nCustomization  options  make  them  ideal for personal use or gifts.',style: TextStyle(fontSize: 20,color: Colors.white)),
          )
        ],
      ),
    );
  }
}

class Beans extends StatelessWidget {
  const Beans({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 450,width:420,
                child: Image.network('https://i.pinimg.com/236x/d4/a0/ee/d4a0ee83ee664e7dc62bbc17a66aaa26.jpg',fit: BoxFit.cover,),
              ),
              Positioned(
                left: 10,
                top: 20,
                child: IconButton(
                  icon: Icon(Icons.arrow_circle_left, color: Colors.white, size: 30),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Positioned(
                top: 30,
                right: 100,
                child: Center(
                  child: Container(
                    child: Text('Coffee Beans', style: TextStyle(fontSize: 30, color: Colors.white),),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0,left: 5.0,right: 10.0),
            child: Text('Coffee  beans  are  the  seeds of the Coffee\nplant , and  they  are the  primary  source of \n'
                'the  coffee  drink. These  beans  come from\ncherries that grow on coffee trees, typically\n'
                'in a regions with  tropical  climates . Coffee \nbeans  are harvested, a processed , roasted \nto bring  out  their  rich flavors and  aromas'
                '\nThe two  main  types coffee beans  Arabica\nand  Robusta,  each  offering  distinct  taste\nprofiles and characteristics.'
                ,style: TextStyle(fontSize: 20,color: Colors.white)),
          )
        ],
      ),
    );
  }
}
class Filter extends StatelessWidget {
  const Filter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 450,width:420,
                child: Image.network(
'https://i.pinimg.com/236x/e1/d9/04/e1d904e40b75e65bd0c88287a350838b.jpg'
                  ,fit: BoxFit.cover,),
              ),
              Positioned(
                left: 10,
                top: 25,
                child: IconButton(
                  icon: Icon(Icons.arrow_circle_left, color: Colors.white, size: 30),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              // Positioned(
              //   top: 30,
              //   right: 115,
              //   child: Center(
              //     child: Container(
              //       child: Text('Filter Paper', style: TextStyle(fontSize: 30, color: Colors.white),),
              //     ),
              //   ),
              // ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('A coffee filter is a  small, typically  paper or \nmetal device used coffee brewing separate\nthe  coffee grounds from the brewed liquid. \n'
                'It allows  water  to pass through the coffee\ngrounds, extracting  flavors,  aromas  while \ntrapping '
                'the grounds produce  a clean  cup \nof  coffee. Paper  filters  often   disposable \nand  provide  a smooth,sediment-free brew,\n'
                'while metal filters  are reusable  and  allow \nmore  oils, fine  particles  to pass  through,\nresulting in  a richer, fuller-bodied  coffee.'
                ,style: TextStyle(fontSize: 20,color: Colors.white)),
          )
        ],
      ),

    );
  }
}
class Logout extends StatelessWidget {
  const Logout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.brown,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 300,width: 350,
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(height: 20,),
                Text('Logout',style: TextStyle(fontSize:40,fontWeight: FontWeight.bold,color: Colors.black ),),
                SizedBox(height: 30,),
                Text('Are you sure want to log out?',style: TextStyle(fontSize: 22,color: Colors.black),),
                SizedBox(height: 50,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Cancel()
                          )
                          );
                        },
                        child: Container(height: 50,width: 150,
                          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20),),color: Colors.white,border: Border.all(color: Colors.blue,width: 2)),
                          child: Center(child: Text('Cancel',style: TextStyle(fontSize: 20,color: Colors.black),)),
                        ),
                      ),
                      SizedBox(width: 20,),
                      GestureDetector(
                        onTap:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Logoutp()
                          )
                          );
                        },
                        child: Container(height: 50,width: 150,
                          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20),),color: Colors.white,border: Border.all(color: Colors.blue,width: 2)),
                          child: Center(child: Text('Logout',style: TextStyle(fontSize: 20,color: Colors.black),)),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class Cancel extends StatelessWidget {
  const Cancel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cancel'),),
    );
  }
}

class Logoutp extends StatelessWidget {
  const Logoutp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Logout'),
      ),
    );
  }
}