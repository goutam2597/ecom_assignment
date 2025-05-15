import 'package:ecommerce_assignment/features/home/ui/widgets/product_list_widget.dart';
import 'package:ecommerce_assignment/features/products/data/product_services.dart';
import 'package:flutter/material.dart';

class AllProductsScreen extends StatelessWidget {
  const AllProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final products = ProductService.allProducts;
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 1,
            childAspectRatio: 0.9,
          ),
          itemBuilder: (context, index) {
            return FittedBox(child: ProductListWidget(product: products[index]));
          },
        ),
      ),
    );
  }
}
