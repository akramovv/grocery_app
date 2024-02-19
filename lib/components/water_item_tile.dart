import 'package:flutter/material.dart';
class WaterItemTile extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;
  final color;
  const WaterItemTile({super.key,
    required this.itemName,
    required this.itemPrice,
    required this.imagePath,
    this.color,});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(color:color[200],borderRadius: BorderRadius.circular(12) ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              imagePath,
              height: 64,
            ),
            Text(itemName),
            MaterialButton(
              onPressed: (){},
              color: color[800],
              child:
              Text(
                '\$'+ itemPrice,
                style:const TextStyle(
                    color: Colors.white,fontWeight: FontWeight.bold) ,),

            )
          ],
        ),
      ),
    );
  }
}
