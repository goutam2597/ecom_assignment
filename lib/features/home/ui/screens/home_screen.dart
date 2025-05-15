import 'package:ecommerce_assignment/features/home/ui/widgets/search_bar_widget.dart';
import 'package:ecommerce_assignment/features/products/ui/screens/featured_products_screen.dart';
import 'package:ecommerce_assignment/features/products/ui/screens/new_products_screen.dart';
import 'package:ecommerce_assignment/features/products/ui/screens/popular_products_screen.dart';
import 'package:flutter/material.dart';

import '../../../products/data/product_services.dart';
import '../widgets/app_bar_user_profile_widget.dart';
import '../widgets/carousel_slider_widget.dart';
import '../widgets/home_screen_header_widget.dart';
import '../widgets/product_list_widget.dart';

class HomeScreen extends StatelessWidget {
  final VoidCallback onProfileTap;
  const HomeScreen({super.key, required this.onProfileTap});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final featured = ProductService.featuredProducts;
    final popular = ProductService.popularProducts;
    final newProducts = ProductService.newProducts;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        title: InkWell(
          onTap: onProfileTap,
          child: AppBarUserProfileWidget(textTheme: textTheme),
        ),
        actions: [
          IconButton(
            padding: const EdgeInsets.all(4),
            onPressed: () {},
            icon: Container(
              height: 48,
              width: 48,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.shade50,
              ),
              child: const Icon(Icons.notifications_none_outlined, size: 28),
            ),
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              SearchBarWidget(),
              SizedBox(height: 24),
              CarouselSliderWidget(),
              SizedBox(height: 24),
              HomeSectionHeaderWidget(
                title: 'Featured',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FeaturedProductsScreen(),
                    ),
                  );
                },
              ),
              SizedBox(
                width: double.infinity,
                height: 180,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ProductListWidget(product: featured[index]);
                  },
                  itemCount: 5,
                ),
              ),
              SizedBox(height: 16),
              HomeSectionHeaderWidget(
                title: 'Most Popular',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PopularProductsScreen(),
                    ),
                  );
                },
              ),
              SizedBox(
                width: double.infinity,
                height: 180,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ProductListWidget(product: popular[index]);
                  },
                  itemCount: 5,
                ),
              ),
              SizedBox(height: 16),
              HomeSectionHeaderWidget(
                title: 'New Products',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NewProductsScreen(),
                    ),
                  );
                },
              ),
              SizedBox(
                width: double.infinity,
                height: 180,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ProductListWidget(product: newProducts[index]);
                  },
                  itemCount: 5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
