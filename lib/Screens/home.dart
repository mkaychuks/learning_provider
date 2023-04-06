import 'package:flutter/material.dart';
import 'package:learning_provider/Provider/cart_provider.dart';
import 'package:learning_provider/Widgets/cart_widget.dart';
import 'package:learning_provider/Widgets/product_tiles.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const List cart = [];

  @override
  Widget build(BuildContext context) {
    return Consumer<CartProvider>(builder: (context, cartProvider, child) {
      var productsList = cartProvider.productsList;
      return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text("Jumi Stores"),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: productsList.isEmpty
                  ? const Icon(
                      Icons.shopping_cart,
                    )
                  : cartWidget(),
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: productsList.length,
          itemBuilder: (BuildContext context, int index) {
            return productTiles(
              subtitle: productsList[index].price.toString(),
              title: productsList[index].title,
              onTap: () {},
            );
          },
        ),
      );
    });
  }
}
