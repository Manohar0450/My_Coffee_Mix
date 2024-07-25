import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Container(
                height: 890,
                width: 180,
                color: Colors.black,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 210),
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200),
                          color: Colors.red,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.network(
                            'https://i.pinimg.com/236x/d2/0c/e6/d20ce6b882f53f35c58738dab963434b.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 70),
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.blue,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.network(
                            'https://i.pinimg.com/236x/63/42/0e/63420e56da8ab81d87dc64b707ce82d5.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 70),
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.yellow,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.network(
                            'https://i.pinimg.com/236x/70/0f/11/700f116df1ff53ecc03ca6aa75404ee8.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 890,
                width: 231,
                color: Colors.black,
              ),
            ],
          ),
          Positioned(
            top: 60,
            left: 90,
            child: Container(
              child: Text(
                'COFFEE MENU',
                style: TextStyle(fontSize: 40, color: Colors.orange),
              ),
            ),
          ),
          Positioned(
            top: 150,
            left: 45,
            child: Container(
              child: Text(
                'Americano \n    \$4.80',
                style: TextStyle(fontSize: 22, color: Colors.orange,fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Positioned(
            top: 370,
            left: 60,
            child: Container(
              child: Text(
                'Latte\n\$5.80',
                style: TextStyle(fontSize: 22, color: Colors.orange,fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Positioned(
            bottom: 240,
            left: 30,
            child: Container(
              child: Text(
                'Cappuccino \n     \$3.80',
                style: TextStyle(fontSize: 22, color: Colors.orange,fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Positioned(
            top: 150,
            left: 220,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '  Hot Coffee',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.orange,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 8),
                buildMenuItem('Americano', '          \$10.00'),
                buildMenuItem('Cafe Latte', '           \$12.00'),
                buildMenuItem('Mocha', '                 \$13.00'),
                buildMenuItem('Cappuccino', '        \$14.00'),
                buildMenuItem('Espresso', '             \$15.00'),
                SizedBox(height: 10),
                Text(
                  ' Cold Coffee',
                  style: TextStyle(
                    fontSize:30,
                    color: Colors.orange,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 6),
                buildMenuItem('Americano ', '         \$10.00'),
                buildMenuItem('Cafe Latte', '           \$12.00'),
                buildMenuItem('Mocha','                 \$13.00'),
                buildMenuItem('Cappuccino', '        \$14.00'),
                buildMenuItem('Espresso', '             \$15.00'),
                SizedBox(height: 10),
                Text(
                  '  Desserts',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.orange,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 6),
                buildMenuItem('Muffin','                  \$11.00'),
                buildMenuItem('Apple Pie','             \$12.00'),
                buildMenuItem('Cookie','                  \$13.00'),
                buildMenuItem('Cheesecake', '         \$14.00'),
                buildMenuItem('Banoffee', '              \$15.00'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildMenuItem(String name, String price) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: TextStyle(fontSize: 16, color: Colors.white,fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 2.0),
            child: Text(
              price,
              style: TextStyle(fontSize: 16, color: Colors.white,fontWeight: FontWeight.bold),),
          ),
        ],
      ),
    );
  }
}