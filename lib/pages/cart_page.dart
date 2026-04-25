import 'package:flutter/material.dart';
import 'package:my_app/components/shoe_tile.dart';
import 'package:my_app/models/cart.dart';
import 'package:my_app/models/shoe.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.grey[300],
        centerTitle: true,
        title: Text("My Cart",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24
          ),
        ),
        elevation: 0,
      ),
      backgroundColor: Colors.grey[300],

      body: SafeArea(
        child: Consumer<Cart>(
            builder: (context, value, child)=>Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25, bottom: 25),
              child: Column(

                children: [

                  const SizedBox(height: 60),
        
        
                  Expanded(
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: value.getUserCart().length,
                        itemBuilder: (context, index){

                          Shoe shoe= value.getUserCart()[index];
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: ListTile(
                              tileColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              leading: Image.asset(shoe.imagePath, width: 70,),
                              title: Text(shoe.name),
                              subtitle: Text(shoe.price),
                              trailing: IconButton(
                                onPressed: (){
                                  value.removeFromCart(shoe);
                                },
                                icon: Icon(Icons.remove,
                                color: Colors.red,
                                ),
                              ),
                            )
                          );
                        }
                    ),
                  ),
                ],
              ),
            )
        ),
      ),
    );
  }
}
