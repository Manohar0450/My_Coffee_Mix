import 'package:flutter/material.dart';
import 'package:mycoffeemix/coustamize.dart';
import 'package:mycoffeemix/mainpage.dart';
import 'package:mycoffeemix/payment.dart';

class Detail extends StatefulWidget {
  final String url;
  final String description;
  final String names;
  final String prices;

  const Detail({
    super.key,
    required this.url,
    required this.description,
    required this.names,
    required this.prices,
  });
  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  int selindex = 0;

  // Define size-specific data
  final Map<int, Map<String, String>> sizeData = {
    0: {'price': '650/-', 'rating': '4.0 (1,234)'},
    1: {'price': '899/-', 'rating': '4.5 (6,986)'},
    2: {'price': '999/-', 'rating': '5.0 (12,345)'},
  };

  void select(int index) {
    setState(() {
      selindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    String Price = sizeData[selindex]!['price']!;
    String Rating = sizeData[selindex]!['rating']!;
    double c;
    switch (selindex) {
      case 0:
        c = 100.0;
        break;
      case 1:
        c= 150.0;
        break;
      case 2:
        c = 200.0;
        break;
      default:
        c =200.0;
    }
    return Scaffold(
      backgroundColor: Color(0xFF181818),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Center(
              child: Column(
                children: [
                  Row(
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 20),
                        child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Home()),
                              );
                            },
                            child: Icon(Icons.arrow_circle_left)),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Custom()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20,left:
                          310),
                          child: Icon(Icons.settings_suggest_outlined,color: Colors.orange,size: 30,),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  AnimatedContainer(
                    duration: Duration(milliseconds: 200),
                    width: c,
                    height: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(widget.url),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    widget.names,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star, color: Colors.orange),
                      SizedBox(width: 4),
                      Text(
                        Rating,
                        style: TextStyle(
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.coffee, color: Colors.orange),
                          SizedBox(height: 4),
                          Text(
                            'Coffee',
                            style: TextStyle(color: Colors.white70),
                          ),
                        ],
                      ),
                      SizedBox(width: 32),
                      Column(
                        children: [
                          Icon(Icons.local_drink, color: Colors.orange),
                          SizedBox(height: 4),
                          Text(
                            'Milk',
                            style: TextStyle(color: Colors.white70),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            Text(
              'Description',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              widget.description,
              style: TextStyle(color: Colors.white70),
            ),
            SizedBox(height: 24),
            Text(
              'Size',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ChoiceChip(
                  label: Text('S-100ml'),
                  selected: selindex == 0,
                  onSelected: (selected) {
                    select(0);
                  },
                  backgroundColor: Colors.white10,
                  selectedColor: Colors.orange,
                  labelStyle: TextStyle(color: Colors.white),
                ),
                SizedBox(width: 8),
                ChoiceChip(
                  label: Text('M-200ml'),
                  selected: selindex == 1,
                  onSelected: (selected) {
                    select(1);
                  },
                  backgroundColor: Colors.white10,
                  selectedColor: Colors.orange,
                  labelStyle: TextStyle(color: Colors.white),
                ),
                SizedBox(width: 8),
                ChoiceChip(
                  label: Text('L-300ml'),
                  selected: selindex == 2,
                  onSelected: (selected) {
                    select(2);
                  },
                  backgroundColor: Colors.white10,
                  selectedColor: Colors.orange,
                  labelStyle: TextStyle(color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Price',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Center(
              child: Text(
                '${Price}',
                style: TextStyle(color: Colors.orange, fontSize: 20),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>payment()));
                },
                child: Container(
                  width: 155,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Buy Now',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            // GestureDetector(
            //   onTap: (){
            //     Navigator.push(context, MaterialPageRoute(builder: (context)=>Custom()));
            //   },
            //   child: Align(
            //     alignment: Alignment.topRight,
            //     child: Icon(Icons.settings_suggest_outlined,color: Colors.orange,),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
