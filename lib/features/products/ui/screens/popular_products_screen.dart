import 'package:ecommerce_assignment/features/home/ui/widgets/product_list_widget.dart';
import 'package:flutter/material.dart';

import '../../data/product_services.dart';


class PopularProductsScreen extends StatefulWidget {
  const PopularProductsScreen({super.key});

  @override
  State<PopularProductsScreen> createState() => _PopularProductsScreenState();
}

class _PopularProductsScreenState extends State<PopularProductsScreen> {
  @override
  Widget build(BuildContext context) {
    final popular = ProductService.popularProducts;

    return Scaffold(
      appBar: AppBar(title: Text('Most Popular')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 1,
            childAspectRatio: 0.9,
          ),
          itemCount: popular.length,
          itemBuilder: (context, index) {
            return FittedBox(child: ProductListWidget(product: popular[index]));
          },
        ),
      ),
    );
  }
}
