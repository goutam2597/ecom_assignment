import 'package:ecommerce_assignment/features/home/ui/widgets/product_list_widget.dart';
import 'package:flutter/material.dart';

import '../../../../app/assets_path.dart';

class FeaturedProductsScreen extends StatefulWidget {
  const FeaturedProductsScreen({super.key});

  @override
  State<FeaturedProductsScreen> createState() => _FeaturedProductsScreenState();
}

class _FeaturedProductsScreenState extends State<FeaturedProductsScreen> {
  @override
  Widget build(BuildContext context) {
    final List<Product> products = [
      Product(image: AssetsPath.shoeImage, name: 'Nike Air Max', price: 40),
      Product(image: AssetsPath.watchImage, name: 'Rolex Watch', price: 35),
      Product(image: AssetsPath.tvImage, name: 'Samsung Smart TV', price: 50),
      Product(image: AssetsPath.shoeImage, name: 'Reebok Zig', price: 38),
      Product(image: AssetsPath.shoeImage, name: 'Reebok Zig', price: 38),
      Product(image: AssetsPath.shoeImage, name: 'Reebok Zig', price: 38),
      Product(image: AssetsPath.shoeImage, name: 'Reebok Zig', price: 38),
      Product(image: AssetsPath.shoeImage, name: 'Reebok Zig', price: 38),
      Product(image: AssetsPath.shoeImage, name: 'Reebok Zig', price: 38),
      Product(image: AssetsPath.shoeImage, name: 'Reebok Zig', price: 38),
      Product(image: AssetsPath.shoeImage, name: 'Reebok Zig', price: 38),
      Product(image: AssetsPath.shoeImage, name: 'Reebok Zig', price: 38),
      Product(image: AssetsPath.shoeImage, name: 'Reebok Zig', price: 38),
      Product(image: AssetsPath.shoeImage, name: 'Reebok Zig', price: 38),
      Product(image: AssetsPath.shoeImage, name: 'Reebok Zig', price: 38),
    ];
    return Scaffold(
      appBar: AppBar(title: Text('Featured')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 1,
            childAspectRatio: 0.9,
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            return FittedBox(child: ProductListWidget(product: products[index]));
          },
        ),
      ),
    );
  }
}
