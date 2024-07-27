import 'package:flutter/material.dart';
import 'package:mycoffeemix/ColdCoffee.dart';
import 'package:mycoffeemix/getstarted2.dart';
import 'hotcoffee.dart';
import 'drawer.dart';
import 'mainpage2.0.dart';
import 'notification.dart';
import 'menucard.dart';
import 'profile.dart';
import 'Desserts.dart';
class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  final List<String> dk = [
    'https://i.pinimg.com/564x/2a/07/bb/2a07bb2cdc3048ebd4dfe470bc06d4bb.jpg',
    'https://i.pinimg.com/564x/5a/2c/b0/5a2cb022fa51e01aabdb57c9f7dd2b3b.jpg',
    'https://i.pinimg.com/564x/ed/f2/c6/edf2c6a531c84f50563c6feefa97c415.jpg',
    'https://i.pinimg.com/564x/17/83/17/178317ed5f80ca0214cba560747ec774.jpg',
    'https://i.pinimg.com/564x/2b/16/45/2b1645d7d8a93d615d31c6b20facf52f.jpg',
    'https://i.pinimg.com/564x/cb/27/9b/cb279b03c3cf37ecfe2a49c41fa7c0ae.jpg'
  ];


  final List<String> dname = [
    'CARAMEL FRAPPUCCINO',
    'EASY COFFEE JELLY',
    'MANGO PUDDING',
    'TOASTED COCONUT MOCHA',
    'IRISH COFFEE MILKSHAKE',
    'VIETNAMESE EGG COFFEE'

  ];
  final List<String> ck = [
    'https://i.pinimg.com/236x/65/d8/31/65d8316f6d623eb40cd259ea57e2c71c.jpg',
    'https://i.pinimg.com/564x/4e/04/c0/4e04c03554303477db35e90449ebf29b.jpg',
    'https://i.pinimg.com/564x/c3/c9/53/c3c953a617ac05f31c32bf401d524722.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYP4rM2tl-576_K7cOsARwfM-1dS6UtrynAA&s',
    'https://media.istockphoto.com/id/157528129/photo/mug-on-plate-filled-with-coffee-surrounded-by-coffee-beans.jpg?s=612x612&w=0&k=20&c=W_za-myO9QP_dimiJeZXsR4G2GHjrdo0RTyO3yVhopQ=',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwh5ACLB0bzMvFMFkqNNEBUk7OTNbaPX4KDA&s'

  ];

  final List<String> cname = [
    'CAPPUCCINO',
    'CINNAMON COFFEE',
    'ICED COCONUT WHIPPED COFFEE',
    'CAFE LATTE',
    'MOCHA',
    'ESPRESSO'

  ];
  final List<String> hk = [
    'https://i.pinimg.com/736x/9b/29/c4/9b29c4555f4fe37fb0b8fd0c824cc3ad.jpg',
    'https://i.pinimg.com/736x/34/d1/74/34d1748eeaa450044413271dc395b3cc.jpg',
    'https://i.pinimg.com/564x/82/d0/9b/82d09b16aa99dd3a409b69c3f0b6ff85.jpg',
    'https://i.pinimg.com/474x/ff/f7/82/fff782f4596ac236742935e4c7bce485.jpg',
    'https://i.pinimg.com/474x/f8/cd/72/f8cd72fe98002a39a023d073e5a3480e.jpg',
    'https://i.pinimg.com/236x/ef/2e/9e/ef2e9e268791e149c9e06d31cf7f4790.jpg',
    'https://i.pinimg.com/564x/ae/36/95/ae3695f39c91093e61e81105684f3021.jpg'
  ];

  final List<String> hname = [
    'AMERICANO',
    'CAFE LATTE',
    'MOCHA',
    'Caramel Macchiato',
    'Hazelnut Heaven',
    'Cinnamon Spice Brew',
    'HOT CHOCOLATE'

  ];
  final List<String> l = [
    'https://i.pinimg.com/564x/2a/07/bb/2a07bb2cdc3048ebd4dfe470bc06d4bb.jpg',
    'https://i.pinimg.com/564x/5a/2c/b0/5a2cb022fa51e01aabdb57c9f7dd2b3b.jpg',
    'https://i.pinimg.com/564x/ed/f2/c6/edf2c6a531c84f50563c6feefa97c415.jpg',
    'https://i.pinimg.com/564x/17/83/17/178317ed5f80ca0214cba560747ec774.jpg',
   ];
  List<String>k=[
    'https://i.pinimg.com/474x/ff/f7/82/fff782f4596ac236742935e4c7bce485.jpg',
    'https://i.pinimg.com/474x/f8/cd/72/f8cd72fe98002a39a023d073e5a3480e.jpg',
    'https://i.pinimg.com/236x/ef/2e/9e/ef2e9e268791e149c9e06d31cf7f4790.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwh5ACLB0bzMvFMFkqNNEBUk7OTNbaPX4KDA&s'

  ];
  List<String>name=[
    'AMERICANO',
    'CAFE LATTE',
    'MOCHA',
    'ESPRESSO'

  ];
  List<String>rate=[
    '420/-',
    '350/-',
    '400/-',
    '100/-'
  ];

  List<String>des=[
    "A cappuccino without chocolate is a classic  Italian coffee made with equal parts espresso and steamed milk, topped with frothed milk foam. It lacks any cocoa powder or chocolate syrup typically used as garnish, resulting in a more traditional and less sweet flavor profile.",
    "A latte with chocolate is a coffee drink made with espresso and steamed milk, enriched with chocolate syrup or cocoa powder. It offers a smooth, creamy texture with a hint of chocolate flavor, making it a popular choice for those who enjoy a touch of sweetness in their coffee.",
    " Flavoured black coffee typically refers to a regular black coffee (brewed coffee without milk or cream) that has been infused or flavored with various additions such as syrups",
    "Tea flavors can vary widely depending on the type and blends used. Some common tea flavors "
  ];
  List<IconData> symbols = [
    Icons.inbox,
    Icons.message_sharp,
    Icons.group_add,
    Icons.star,
    Icons.payment_outlined,
  ];
  List<String> names = [
    'Coffee Machines',
    'Coffee Mugs',
    'Coffee Beans',
    'Filter paper',
    'Logout',

  ];
  List<IconData> Arrow= [
    Icons.arrow_forward_ios_outlined,
    Icons.arrow_forward_ios_outlined,
    Icons.arrow_forward_ios_outlined,
    Icons.arrow_forward_ios_outlined,
    Icons.arrow_forward_ios_outlined,

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
      Color(0xFF181818),
      // Colors.cyanAccent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>profile()));
                },
                child: Icon(Icons.person,color: Colors.orange,)),
          )
        ],
      ),


      drawer: Drawer(
        child: Stack(
          children: [
            // Background image
            GestureDetector(
              onTap:
              (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>profile()));
              },
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
              'https://img.freepik.com/premium-photo/close-up-cup-black-hot-coffee-with-smoke-black-background-with-copy-space_861799-1338.jpg?ga=GA1.1.690210928.1721451751&semt=ais_user',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            // Drawer contents
            ListView(
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(color: Colors.black.withOpacity(0.8)),
                  child: Column(
                    children: [
                      CircleAvatar(radius: 50, backgroundImage: NetworkImage('https://i.pinimg.com/236x/1f/ef/93/1fef93d9f1249087da491c053878b1f8.jpg')),
                      Text('My Coffee Mix', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white)),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Machine()));
                  },
                  child: ListTile(
                    leading: Icon(Icons.coffee_maker_outlined, color: Colors.white),
                    title: Text('Coffee Machine', style: TextStyle(fontSize: 15, color: Colors.white)),
                    trailing: Icon(Icons.arrow_forward_ios_outlined, color: Colors.white),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Mugs()));
                  },
                  child: ListTile(
                    leading: Icon(Icons.coffee_outlined, color: Colors.white),
                    title: Text('Coffee Mugs', style: TextStyle(fontSize: 15, color: Colors.white)),
                    trailing: Icon(Icons.arrow_forward_ios_outlined, color: Colors.white),
                  ),
                ),
                SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Beans()));
                  },
                  child: ListTile(
                    leading: Icon(Icons.coffee_sharp, color: Colors.white),
                    title: Text('Coffee Beans', style: TextStyle(fontSize: 15, color: Colors.white)),
                    trailing: Icon(Icons.arrow_forward_ios_outlined, color: Colors.white),
                  ),
                ),
                SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Filter()));
                  },
                  child: ListTile(
                    leading: Icon(Icons.filter, color: Colors.white),
                    title: Text('Filter Papers', style: TextStyle(fontSize: 15, color: Colors.white)),
                    trailing: Icon(Icons.arrow_forward_ios_outlined, color: Colors.white),
                  ),
                ),
                SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => two()));
                  },
                  child: ListTile(
                    leading: Icon(Icons.logout, color: Colors.white),
                    title: Text('Logout', style: TextStyle(fontSize: 15, color: Colors.white)),
                    trailing: Icon(Icons.arrow_forward_ios_outlined, color: Colors.white),
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ],
        ),
      ),



      body:
      SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('  Find the best \n  coffee for you',style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child:
              TextField(decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                hintText: 'Find Your Meal',
                hintStyle: TextStyle(color: Colors.white),
                suffixIcon: Icon(Icons.search,color: Colors.white,),
              ),),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,









                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     ElevatedButton(
                       onPressed: (){

                       },
                       child: Text(
                        'All',
                        style: TextStyle(color:Colors.orange, fontSize: 16),
                                           ),
                     ),
                    SizedBox(width: 10,),
                    ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>dess()));
                    },child: Text(
                      'Desserts',
                      style: TextStyle(color:Colors.white, fontSize: 16),
                    ),),
                    SizedBox(width: 10,),
                    ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>hot()));
                    },child: Text(
                      'Hot Coffee',
                      style: TextStyle(color:Colors.white, fontSize: 16),
                    ),),
                    SizedBox(width: 10,),
                    ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>cold()));
                    },child: Text(
                      'Cold Coffee',
                      style: TextStyle(color:Colors.white, fontSize: 16),
                    ),),

                  ],
                ),




              ),
            ),
            SizedBox(height: 20,),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Row(
                  children: List.generate(k.length, (index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Detail(
                              url: dk[index],
                              description: des[index],
                              names: dname[index],
                              prices: rate[index],
                            ),
                          ),
                        );
                      },
                      child: Container(
                        width: 215,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              child: Image.network(
                                dk[index],
                                height: 200,
                                width: 300,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 20),
                            Padding(
                              padding: const EdgeInsets.only(right: 90),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  '${dname[index]}',
                                  style: TextStyle(fontSize: 15, color: Colors.white),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                children: [
                                  Text(
                                    rate[index],
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.add,
                                    color: Colors.orange,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Row(
                  children: List.generate(k.length, (index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Detail(
                              url: hk[index],
                              description: des[index],
                              names: hname[index],
                              prices: rate[index],

                            ),
                          ),

                        );
                      },

                      child: Container(
                        width: 215,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              child: Image.network(
                                hk[index],
                                height: 200,
                                width: 300,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 5),
                            Padding(
                              padding: const EdgeInsets.only(right: 90),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  '${hname[index]}',
                                  style: TextStyle(fontSize: 18, color: Colors.white),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                children: [
                                  Text(
                                    rate[index],
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.add,
                                    color: Colors.orange,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Row(
                  children: List.generate(k.length, (index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Detail(
                              url: ck[index],
                              description: des[index],
                              names: cname[index],
                              prices: rate[index],
                            ),
                          ),
                        );
                      },
                      child: Container(
                        width: 215,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              child: Image.network(
                                ck[index],
                                height: 200,
                                width: 300,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 5),
                            Padding(
                              padding: const EdgeInsets.only(right: 90),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  '${cname[index]}',
                                  style: TextStyle(fontSize: 15, color: Colors.white),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                children: [
                                  Text(
                                    rate[index],
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.add,
                                    color: Colors.orange,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(k.length, (index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Detail(
                            url: k[index],
                            description: des[index],
                            names: name[index],
                            prices: rate[index],
                          ),
                        ),
                      );
                    },
                    child: Container(
                      width: 215,
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            child: Image.network(
                              k[index],
                              height: 200,
                              width: 300,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 5),
                          Padding(
                            padding: const EdgeInsets.only(right: 90),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                '${name[index]},',
                                style: TextStyle(fontSize: 20, color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                Text(
                                  rate[index],
                                  style: TextStyle(color: Colors.white),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.add,
                                  color: Colors.orange,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),


          ],),
      ),










      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: [

          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.orange,),label: ''),
          BottomNavigationBarItem(icon: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
              },
              child: Icon(Icons.menu_book,color: Colors.white,)),label: ''),
          BottomNavigationBarItem(icon: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationsScreen()));
              },
              child: Icon(Icons.notification_add_rounded,color: Colors.white,)),label: ''),
        ],),
    );
  }
}