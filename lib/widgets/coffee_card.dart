import 'package:flutter/material.dart';

import '../models/cofeemodel.dart';
// Coffee Card Widget
class CoffeeCard extends StatelessWidget {
  final Coffee coffee;

  const CoffeeCard({Key? key, required this.coffee}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                  child: Image.asset(coffee.image, height: 120, width: double.infinity, fit: BoxFit.cover),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(50)),
                    child: Row(
                      children: [
                        Icon(Icons.star, color: Colors.orange, size: 14),
                        SizedBox(width: 2),
                        Text("4.8", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(coffee.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                SizedBox(height: 4),
                Text(coffee.type, style: TextStyle(color: Colors.black54, fontSize: 14)),
                SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("\$${coffee.price.toStringAsFixed(2)}", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    Container(
                      decoration: BoxDecoration(color: Colors.brown, borderRadius: BorderRadius.circular(8)),
                      child: IconButton(icon: Icon(Icons.add, color: Colors.white), onPressed: () {}),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
