import 'package:flutter/material.dart';
import 'package:mycoffeemix/mainpage2.0.dart';

class dess extends StatelessWidget {
  dess({super.key});

  final List<String> k = [
'https://i.pinimg.com/564x/2a/07/bb/2a07bb2cdc3048ebd4dfe470bc06d4bb.jpg',
'https://i.pinimg.com/564x/5a/2c/b0/5a2cb022fa51e01aabdb57c9f7dd2b3b.jpg',
    'https://i.pinimg.com/564x/ed/f2/c6/edf2c6a531c84f50563c6feefa97c415.jpg',
'https://i.pinimg.com/564x/17/83/17/178317ed5f80ca0214cba560747ec774.jpg',
    'https://i.pinimg.com/564x/2b/16/45/2b1645d7d8a93d615d31c6b20facf52f.jpg',
    'https://i.pinimg.com/564x/cb/27/9b/cb279b03c3cf37ecfe2a49c41fa7c0ae.jpg'
  ];


  final List<String> name = [
    'CARAMEL FRAPPUCCINO',
    'EASY COFFEE JELLY',
    'MANGO PUDDING',
    'TOASTED COCONUT MOCHA',
    'IRISH COFFEE MILKSHAKE',
    'VIETNAMESE EGG COFFEE'

  ];

  final List<String> rate = [
    '420/-',
    '350/-',
    '400/-',
    '100/-',
    '200/-',
    '900'
  ];

  final List<String> des = [
    "A cappuccino without chocolate is a classic Italian coffee made with equal parts espresso and steamed milk, topped with frothed milk foam. It lacks any cocoa powder or chocolate syrup typically used as garnish, resulting in a more traditional and less sweet flavor profile.",
    "A latte with chocolate is a coffee drink made with espresso and steamed milk, enriched with chocolate syrup or cocoa powder. It offers a smooth, creamy texture with a hint of chocolate flavor, making it a popular choice for those who enjoy a touch of sweetness in their coffee.",
    "Flavoured black coffee typically refers to a regular black coffee (brewed coffee without milk or cream) that has been infused or flavored with various additions such as syrups",
    "Tea flavors can vary widely depending on the type and blends used. Some common tea flavors."
    "Tea flavors can vary widely depending on the type and blends used. Some common tea flavors.",


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Desserts"),
      ),
      body: SingleChildScrollView(
        child: Column(
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
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        k[index],
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name[index],
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'MyCoffeeMix',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Text(
                                  'Eat In',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Text(
                                  'Take Away',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
