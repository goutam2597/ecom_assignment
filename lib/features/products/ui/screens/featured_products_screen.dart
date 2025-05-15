import 'package:ecommerce_assignment/features/home/ui/widgets/product_list_widget.dart';
import 'package:flutter/material.dart';

import '../../data/product_services.dart';


class FeaturedProductsScreen extends StatefulWidget {
  const FeaturedProductsScreen({super.key});

  @override
  State<FeaturedProductsScreen> createState() => _FeaturedProductsScreenState();
}

class _FeaturedProductsScreenState extends State<FeaturedProductsScreen> {
  @override
  Widget build(BuildContext context) {

    final featured = ProductService.featuredProducts;


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
          itemCount: featured.length,
          itemBuilder: (context, index) {
            return FittedBox(child: ProductListWidget(product: featured[index]));
          },
        ),
      ),
    );
  }
}
