import 'package:flutter/material.dart';
import 'package:learning_provider/Provider/cart_provider.dart';
import 'package:learning_provider/Widgets/cart_widget.dart';
import 'package:learning_provider/Widgets/custom_button.dart';
import 'package:learning_provider/Widgets/product_tiles.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Consumer<CartProvider>(
      builder: (context, cartProvider, child) {
        var productsList = cartProvider.productsList;
        var cartItem = cartProvider.cartItems;
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: const Text("Jumi Stores"),
            centerTitle: true,
            actions: [
              IconButton(
                onPressed: () {},
                icon: cartItem.isEmpty
                    ? const Icon(
                        Icons.shopping_cart,
                      )
                    : cartWidget(),
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 400,
                  child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: productsList.length,
                      itemBuilder: (context, index) {
                        return productTiles(
                            title: productsList[index].title,
                            subtitle: productsList[index].price.toString(),
                            onTap: () {});
                      }),
                ),
                customButton(
                    onTap: () {}, cartStatus: cartItem.isEmpty ? false : true)
              ],
            ),
          ),
        );
      },
    );
  }
}
