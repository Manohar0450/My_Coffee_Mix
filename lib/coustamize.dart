import 'package:flutter/material.dart';
import 'package:mycoffeemix/payment.dart';
import 'package:lottie/lottie.dart';
import 'dart:async';
import '';

class Custom extends StatefulWidget {
  @override
  _CustomCoffeePageState createState() => _CustomCoffeePageState();
}

class _CustomCoffeePageState extends State<Custom> {
  String Bean = 'Single-origin';
  String GrindSize = 'Medium';
  String BrewingMethod = 'Drip Coffee Maker';
  List<String> Additives = [];
  String ServingStyle = 'Hot';
  double strength = 1.0;
  String cupSize = 'Medium';

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Customize Your Coffee'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Bean Type', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.orange)),
                DropdownButton<String>(
                  value: Bean,
                  dropdownColor: Colors.black54,
                  isExpanded: true,
                  onChanged: (value) {
                    setState(() {
                      Bean = value!;
                    });
                  },
                  items: ['Single-origin', 'Blend'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value, style: TextStyle(color: Colors.white)),
                    );
                  }).toList(),
                ),
                SizedBox(height: 10),
              ],
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Grind Size', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.orange)),
                DropdownButton<String>(
                  value: GrindSize,
                  dropdownColor: Colors.black54,
                  isExpanded: true,
                  onChanged: (value) {
                    setState(() {
                      GrindSize = value!;
                    });
                  },
                  items: ['Coarse', 'Medium', 'Fine', 'Extra Fine'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value, style: TextStyle(color: Colors.white)),
                    );
                  }).toList(),
                ),
                SizedBox(height: 20),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Brewing Method', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.orange)),
                DropdownButton<String>(
                  value: BrewingMethod,
                  dropdownColor: Colors.black54,
                  isExpanded: true,
                  onChanged: (value) {
                    setState(() {
                      BrewingMethod = value!;
                    });
                  },
                  items: [
                    'Drip Coffee Maker',
                    'French Press',
                    'Pour-Over',
                    'Espresso Machine',
                    'Aeropress',
                    'Cold Brew'
                  ].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value, style: TextStyle(color: Colors.white)),
                    );
                  }).toList(),
                ),
                SizedBox(height: 20),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Additives', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.orange)),
                Wrap(
                  spacing: 10.0,
                  children: ['Milk', 'Sugar', 'Honey', 'Vanilla', 'Cinnamon'].map((option) {
                    return FilterChip(
                      label: Text(option, style: TextStyle(color: Colors.white)),
                      selected: Additives.contains(option),
                      selectedColor: Colors.orange,
                      onSelected: (selected) {
                        setState(() {
                          if (selected) {
                            Additives.add(option);
                          } else {
                            Additives.remove(option);
                          }
                        });
                      },
                    );
                  }).toList(),
                ),
                SizedBox(height: 20),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Serving Style', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.orange)),
                DropdownButton<String>(
                  value: ServingStyle,
                  dropdownColor: Colors.black54,
                  isExpanded: true,
                  onChanged: (value) {
                    setState(() {
                      ServingStyle = value!;
                    });
                  },
                  items: ['Hot', 'Iced', 'Blended'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value, style: TextStyle(color: Colors.white)),
                    );
                  }).toList(),
                ),
                SizedBox(height: 20),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Strength', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.orange)),
                Slider(
                  value: strength,

                  label: strength.toString(),
                  onChanged: (value) {
                    setState(() {
                      strength = value;
                    });
                  },
                  activeColor: Colors.orange,
                  inactiveColor: Colors.white,
                ),
                SizedBox(height: 20),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Cup Size', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.orange)),
                DropdownButton<String>(
                  value: cupSize,
                  dropdownColor: Colors.black54,
                  isExpanded: true,
                  onChanged: (value) {
                    setState(() {
                      cupSize = value!;
                    });
                  },
                  items: ['Small', 'Medium', 'Large', 'Extra Large'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value, style: TextStyle(color: Colors.white)),
                    );
                  }).toList(),
                ),
                SizedBox(height: 20),
              ],
            ),
          Text('Any Other',style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold),),
         SizedBox(height: 20,),
          TextField(decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 3),borderRadius: BorderRadius.all(Radius.circular(10))),
            hintText: 'Write here\n\n.',
            hintStyle: TextStyle(color: Colors.white),
            prefixIcon: Icon(Icons.search,color: Colors.white,),
          ),),
                 SizedBox(height: 25,),
                 GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>paying()));
                  },
                  child: Container(height:50,width: 5,decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.deepOrangeAccent

                  ),
                    child: Center(child: Text('Instant Purchase',style: TextStyle(fontWeight: FontWeight
                        .bold),)),
                  ),
                )

          ],
        ),
      ),
    );
  }
}
class paying extends StatefulWidget {
  const paying({super.key});

  @override
  State<paying> createState() => _payingState();
}

class _payingState extends State<paying> {

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 2),() {
      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>payment()));
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body:Center(
        child:  Lottie.network(
            'https://lottie.host/a0df5c2c-73b1-4cf8-a3af-9fef81f7002c/pqfPZFVPww.json'
            ,width: 500,height: 300),
      ),
    );
  }
}