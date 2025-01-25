import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_card.dart';
import 'product_details.dart';

class HomePage extends StatelessWidget {
  final List<Product> products = [
    Product(name: 'Smartphone', price: 699.99, image: 'assets/phone.jpeg'),
    Product(name: 'Laptop', price: 999.99, image: 'assets/laptop.jpg'),
    Product(name: 'Headphones', price: 199.99, image: 'assets/headphones.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('E-Commerce App')),
      body: GridView.builder(
        padding: const EdgeInsets.all(8.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductCard(
            product: products[index],
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetails(product: products[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

