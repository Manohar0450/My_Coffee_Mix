import 'package:flutter/material.dart';

class Machine extends StatelessWidget {
  const Machine({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
            bottom: 19,
            child: Container(
              height: 890,width: 420,
              child:Image.network('https://i.pinimg.com/236x/38/e2/43/38e243947b45c510cbd2f4940a1e8c82.jpg',fit: BoxFit.cover,),
            ),
          ),
          Container(
            height: 890,
            width: 410,
            child:
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40.0,right: 15.0,top: 100.0),
                  child: Text(
                    'A  coffee  machine  is  an  appliance  designed'
                        ' to  brew coffee  by heating water passing through coffee ground\nIt typically features  a water reservoir\na heating  '
                        'element,and a brew basket ',
                    style: TextStyle(fontSize: 20, color: Colors.white),),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left:40.0,right: 15.0 ),
                  child: Text('Some machines include as additional '
                      'features\nlike built  grinders a milk frothers  The primary \ntypes  of  coffee  machines  include  espresso \nmachines  brewers  Regular  an  maintenance\nsuch descaling  and cleaning essential ensure  optimal  performance.', style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold, color: Colors.white70),
                  ),
                )
              ],


            ),


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

        ],
      ),
    );
  }
}

class Mugs extends StatelessWidget {
  const Mugs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
            bottom: 19,
            child: Container(
              height: 890,width: 420,
              child:Image.network('https://i.pinimg.com/236x/87/72/b3/8772b3b1555334104e49add19b9382af.jpg',fit: BoxFit.cover,),
            ),
          ),
          Container(
            height: 890,
            width: 410,
            child:
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40.0,right: 15.0,top: 100.0),
                  child: Text(
                    'A  coffee  machine  is  an  appliance  designed'
                        ' to  brew coffee  by heating water passing through coffee ground\nIt typically features  a water reservoir\na heating  '
                        'element,and a brew basket ',
                    style: TextStyle(fontSize: 20, color: Colors.black87),),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left:40.0,right: 15.0 ),
                  child: Text('Some machines include as additional '
                      'features\nlike built  grinders a milk frothers  The primary \ntypes  of  coffee  machines  include  espresso \nmachines  brewers  Regular  an  maintenance\nsuch descaling  and cleaning essential ensure  optimal  performance.', style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold, color: Colors.black87),
                  ),
                )
              ],


            ),


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

        ],
      ),
    );
  }
}

class Beans extends StatelessWidget {
  const Beans({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
            bottom: 19,
            child: Container(
              height: 890,width: 420,
              child:Image.network('https://i.pinimg.com/236x/94/b4/fc/94b4fc559f3816cce5e071f0715e5b08.jpg',fit: BoxFit.cover,),
            ),
          ),
          Container(
            height: 890,
            width: 410,
            child:
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40.0,right: 15.0,top: 100.0),
                  child: Text(
                    'A  coffee  machine  is  an  appliance  designed'
                        ' to  brew coffee  by heating water passing through coffee ground\nIt typically features  a water reservoir\na heating  '
                        'element,and a brew basket ',
                    style: TextStyle(fontSize: 20, color: Colors.white),),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left:40.0,right: 15.0 ),
                  child: Text('Some machines include as additional '
                      'features\nlike built  grinders a milk frothers  The primary \ntypes  of  coffee  machines  include  espresso \nmachines  brewers  Regular  an  maintenance\nsuch descaling  and cleaning essential ensure  optimal  performance.', style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold, color: Colors.white70),
                  ),
                )
              ],


            ),


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

        ],
      ),
    );
  }
}

class Filter extends StatelessWidget {
  const Filter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
            bottom: 19,
            child: Container(
              height: 890,width: 420,
              child:Image.network('https://i.pinimg.com/236x/55/a1/03/55a10334c2588b3739043aa1f9ad836d.jpg',fit: BoxFit.cover,),
            ),
          ),
          Container(
            height: 890,
            width: 410,
            child:
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40.0,right: 15.0,top: 100.0),
                  child: Text(
                    'A  coffee  machine  is  an  appliance  designed'
                        ' to  brew coffee  by heating water passing through coffee ground\nIt typically features  a water reservoir\na heating  '
                        'element,and a brew basket ',
                    style: TextStyle(fontSize: 20, color: Colors.white),),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left:40.0,right: 15.0 ),
                  child: Text('Some machines include as additional '
                      'features\nlike built  grinders a milk frothers  The primary \ntypes  of  coffee  machines  include  espresso \nmachines  brewers  Regular  an  maintenance\nsuch descaling  and cleaning essential ensure  optimal  performance.', style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold, color: Colors.white70),
                  ),
                )
              ],


            ),


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

        ],
      ),
    );
  }
}

