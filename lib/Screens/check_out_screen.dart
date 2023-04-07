import 'package:flutter/material.dart';
import 'package:learning_provider/Provider/cart_provider.dart';
import 'package:learning_provider/Widgets/check_out_tiles.dart';
import 'package:learning_provider/Widgets/custom_button.dart';
import 'package:provider/provider.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CartProvider>(
      builder: (context, cartProvider, child) {
        var cartItem = cartProvider.cartItems;
        var total = cartProvider.totalCartPrice;
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: const Text("Checkout Jumi Stores"),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 350,
                  child: ListView.builder(
                    // physics: const NeverScrollableScrollPhysics(),
                    itemCount: cartItem.length,
                    itemBuilder: (context, index) {
                      return checkOutTiles(
                        title: cartItem[index].title,
                        subtitle: cartItem[index].price.toString(),
                        onTap: (){
                          cartProvider.removeItemToCart(cartItem[index]);
                        }
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Total", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                      Text("\$${total.toString()}", style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
                
                customButton(
                  title: "Checkout",
                  context: context,
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const CheckOutScreen();
                        },
                      ),
                    );
                  },
                  cartStatus: cartItem.isEmpty ? false : true,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
