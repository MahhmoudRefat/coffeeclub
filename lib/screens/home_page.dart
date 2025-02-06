import 'package:flutter/material.dart';

import '../models/cofeemodel.dart';
import '../widgets/coffee_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static String id = 'HomePage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Coffee> coffeeList = [
    Coffee(name: "Caffe Mocha", type: "Deep Foam", price: 4.53, image: "assets/images/property1_coffee_property2_2.png"),
    Coffee(name: "Flat White", type: "Espresso", price: 3.53, image: "assets/images/property1_coffee_property2_3.png"),
    Coffee(name: "Flat White", type: "Espresso", price: 3.53, image: "assets/images/property1_coffee_property2_2.png"),
    Coffee(name: "Flat White", type: "Espresso", price: 3.53, image: "assets/images/property1_coffee_property2_4.png"),
    Coffee(name: "Flat White", type: "Espresso", price: 3.53, image: "assets/images/property1_coffee_property2_5.png"),
    Coffee(name: "Flat White", type: "Espresso", price: 3.53, image: "assets/images/property1_coffee_property2_6.png"),
    Coffee(name: "Flat White", type: "Espresso", price: 3.53, image: "assets/images/property1_coffee_property2_1.png"),
    Coffee(name: "Flat White", type: "Espresso", price: 3.53, image: "assets/images/property1_coffee_property2_2.png"),
    Coffee(name: "Flat White", type: "Espresso", price: 3.53, image: "assets/images/property1_coffee_property2_3.png"),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Location Selector
              Row(
                children: [
                  Text(
                    "Location",
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                  Spacer(),
                  Icon(Icons.keyboard_arrow_down, color: Colors.white70)
                ],
              ),
              SizedBox(height: 4),
              Text(
                "Bilzen, Tanjungbalai",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              // Search Bar
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Search coffee",
                        hintStyle: TextStyle(color: Colors.white54),
                        prefixIcon: Icon(Icons.search, color: Colors.white70),
                        filled: true,
                        fillColor: Colors.black54,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 12),
                  // Filter Button
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.tune, color: Colors.white),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),

              // Promo Banner
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage('assets/images/banner.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                height: 120,
                child: Stack(
                  children: [
                    Positioned(
                      top: 10,
                      left: 10,
                      child: Container(
                        padding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          "Promo",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 10,
                      child: Text(
                        "Buy one get\none FREE",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          backgroundColor: Colors.black54,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),

              // Coffee Grid View
              GridView.builder(
                shrinkWrap: true, // This makes the GridView size to its content
                physics: NeverScrollableScrollPhysics(), // Disable scrolling in GridView
                itemCount: coffeeList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) {
                  return CoffeeCard(coffee: coffeeList[index]);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
