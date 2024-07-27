import 'package:flutter/material.dart';
import 'package:mycoffeemix/mainpage2.0.dart';

class cold extends StatelessWidget {
  cold({super.key});

  final List<String> k = [
'https://i.pinimg.com/236x/65/d8/31/65d8316f6d623eb40cd259ea57e2c71c.jpg',
    'https://i.pinimg.com/564x/4e/04/c0/4e04c03554303477db35e90449ebf29b.jpg',
    'https://i.pinimg.com/564x/c3/c9/53/c3c953a617ac05f31c32bf401d524722.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYP4rM2tl-576_K7cOsARwfM-1dS6UtrynAA&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYP4rM2tl-576_K7cOsARwfM-1dS6UtrynAA&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwh5ACLB0bzMvFMFkqNNEBUk7OTNbaPX4KDA&s'

  ];

  final List<String> name = [
    'CAPPUCCINO',
    'CINNAMON COFFEE',
    'ICED COCONUT WHIPPED COFFEE',
    'CAFE LATTE',
    'MOCHA',
    'ESPRESSO'

  ];

  final List<String> rate = [
    '420/-',
    '999/-',
    '999/-',
    '350/-',
    '400/-',
    '100/-'

  ];

  final List<String> des = [
    "A cappuccino without chocolate is a classic Italian coffee made with equal parts espresso and steamed milk, topped with frothed milk foam. It lacks any cocoa powder or chocolate syrup typically used as garnish, resulting in a more traditional and less sweet flavor profile.",
    "A latte with chocolate is a coffee drink made with espresso and steamed milk, enriched with chocolate syrup or cocoa powder. It offers a smooth, creamy texture with a hint of chocolate flavor, making it a popular choice for those who enjoy a touch of sweetness in their coffee.",
    "Flavoured black coffee typically refers to a regular black coffee (brewed coffee without milk or cream) that has been infused or flavored with various additions such as syrups",
    "Tea flavors can vary widely depending on the type and blends used. Some common tea flavors.",
    "Flavoured black coffee typically refers to a regular black coffee (brewed coffee without milk or cream) that has been infused or flavored with various additions such as syrups",
    "Tea flavors can vary widely depending on the type and blends used. Some common tea flavors."


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("COLD Coffees"),
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
                      child: Image.network(k[index],
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
