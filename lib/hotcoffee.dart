import 'package:flutter/material.dart';
import 'package:mycoffeemix/mainpage2.0.dart';

class hot extends StatelessWidget {
  hot({super.key});

  final List<String> k = [
    'https://i.pinimg.com/736x/9b/29/c4/9b29c4555f4fe37fb0b8fd0c824cc3ad.jpg',
    'https://i.pinimg.com/736x/34/d1/74/34d1748eeaa450044413271dc395b3cc.jpg',
    'https://i.pinimg.com/564x/82/d0/9b/82d09b16aa99dd3a409b69c3f0b6ff85.jpg',
    'https://i.pinimg.com/474x/ff/f7/82/fff782f4596ac236742935e4c7bce485.jpg',
    'https://i.pinimg.com/474x/f8/cd/72/f8cd72fe98002a39a023d073e5a3480e.jpg',
    'https://i.pinimg.com/236x/ef/2e/9e/ef2e9e268791e149c9e06d31cf7f4790.jpg',
'https://i.pinimg.com/564x/ae/36/95/ae3695f39c91093e61e81105684f3021.jpg'
  ];

  final List<String> name = [
    'AMERICANO',
    'CAFE LATTE',
    'MOCHA',
    'Caramel Macchiato',
    'Hazelnut Heaven',
    'Cinnamon Spice Brew',
    'HOT CHOCOLATE'

  ];

  final List<String> rate = [
    '420/-',
    '350/-',
    '400/-',
    '100/-',
    '420/-',
    '350/-',
    '400/-'

  ];

  final List<String> des = [
    "A cappuccino without chocolate is a classic Italian coffee made with equal parts espresso and steamed milk, topped with frothed milk foam. It lacks any cocoa powder or chocolate syrup typically used as garnish, resulting in a more traditional and less sweet flavor profile.",
    "A latte with chocolate is a coffee drink made with espresso and steamed milk, enriched with chocolate syrup or cocoa powder. It offers a smooth, creamy texture with a hint of chocolate flavor, making it a popular choice for those who enjoy a touch of sweetness in their coffee.",
    "Flavoured black coffee typically refers to a regular black coffee (brewed coffee without milk or cream) that has been infused or flavored with various additions such as syrups",
    "Tea flavors can vary widely depending on the type and blends used. Some common tea flavors."

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hot Coffees"),
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
                            'MYCOFFEEMIX',
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
