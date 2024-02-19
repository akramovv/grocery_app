import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../components/grocery_item_tile.dart';
import '../model/cart_model.dart';
import 'cart_page.dart';
import 'next_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return CartPage();
            },
          ),
        ),
        child: Icon(Icons.shopping_bag),
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
              "Fresh Items",
              style: TextStyle(fontSize: 16),
            ),
          ),
          Expanded(
            child: Consumer<CartModel>(
              builder: (context, value, child) {
                return GridView.builder(
                  itemCount: value.shopItems.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1 / 1.2,
                  ),
                  itemBuilder: (context, index) {
                    return GroceryItemTile(
                      itemName: value.shopItems[index][0],
                      itemPrice: value.shopItems[index][1],
                      imagePath: value.shopItems[index][2],
                      color: value.shopItems[index][3],
                      onPressed:(){
                        Provider.of<CartModel>(context,listen: false).
                        addItemsToCart(index);

                      } ,
                    );
                  },
                );
              },
            ),
          ),

          // SizedBox(height: 4,),
          //
          //   GestureDetector(
          //     onTap:()=>Navigator.push(context, MaterialPageRoute(builder:(context){
          //       return NextPage();
          //     } )) ,
          //     child: Padding(
          //       padding: const EdgeInsets.only(left: 130.0,right: 80,bottom: 40,top: 50),
          //       child: Container(
          //         decoration: BoxDecoration(
          //           color: Colors.deepPurple,
          //           borderRadius: BorderRadius.circular(12),
          //         ),
          //         padding: EdgeInsets.all(24),
          //         child:const Text('Next Store', style: TextStyle(color: Colors.white,),textAlign:TextAlign.center),
          //       ),
          //     ),
          //   ),
        ]),
      ),
    );
  }
}
