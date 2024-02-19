import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../components/water_item_tile.dart';
import '../model/water_model.dart';

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          const SizedBox(
          height: 48,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Text('Good morning'),
        ),
        const SizedBox(
          height: 4,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(
            "Let's order fresh items for you",
            style: GoogleFonts.notoSerif(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Divider(),
        ),
        const SizedBox(
          height: 24,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(
            "Water",
            style: TextStyle(fontSize: 16),
          ),
        ),
        Expanded(
          child: Consumer<WaterModel>(
            builder: (context, value, child) {
              return GridView.builder(
                itemCount: value.itemshops.length,
                gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return WaterItemTile(
                    itemName: value.itemshops[index][0],
                    itemPrice: value.itemshops[index][1],
                    imagePath: value.itemshops[index][2],
                    color: value.itemshops[index][3],
                  );
                },
              );
            },
          ),
        ),
          ],
        ),
      ),
    );
  }
}
