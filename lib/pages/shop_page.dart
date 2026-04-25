import 'package:flutter/material.dart';
import 'package:my_app/components/shoe_tile.dart';
import 'package:my_app/models/cart.dart';
import 'package:provider/provider.dart';

import '../models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart> (builder: (context, value, child) =>
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey[200],
              ),
              margin: EdgeInsets.symmetric(horizontal: 25),
              padding: EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Search",
                    style: TextStyle(
                        color: Colors.grey
                    ),
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Text("Everyone flies, some fly longer than others",
                style: TextStyle(
                    color: Colors.grey[600]
                ),
              ),
            ),
            //picks
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Hot Picks",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                    ),

                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],

              ),
            ),
            const SizedBox(height: 10,),
            Text(
              "Cart: ${value.getUserCart().length}",
              style: TextStyle(fontSize: 18),
            ),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: value.getShoeShop().length,
                  itemBuilder: (context, index){

                    Shoe shoe= value.getShoeShop()[index];
                    return ShoeTile(
                      shoe: shoe,
                      onTap: () {
                        value.addToCart(shoe);
                      },
                    );
                  }
              ),
            ),
            const Padding(
              padding:  EdgeInsets.only(top: 25, left: 25, right: 25),
              child: Divider(color: Colors.white,),
            )
          ],
        ),

    );
  }
}
