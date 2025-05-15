import '../../../app/assets_path.dart';


enum ProductCategory {featured,popular,newProduct}
class Product {
  final String image;
  final String name;
  final double price;
  final ProductCategory category;

  Product({required this.image, required this.name, required this.price,required this.category,});
}

class ProductService {
  static final List<Product>
    _products= [
    Product(image: AssetsPath.shoeImage, name: 'Nike Air Max', price: 40, category: ProductCategory.featured),
    Product(image: AssetsPath.tvImage, name: 'Samsung QLED', price: 50, category: ProductCategory.featured),
    Product(image: AssetsPath.shoeImage, name: 'Puma Flyer', price: 40, category: ProductCategory.featured),
    Product(image: AssetsPath.watchImage, name: 'Apple Watch', price: 35, category: ProductCategory.featured),
    Product(image: AssetsPath.tvImage, name: 'Sony Bravia 4K', price: 50, category: ProductCategory.featured),
    Product(image: AssetsPath.watchImage, name: 'Casio G-Shock', price: 35, category: ProductCategory.featured),
    Product(image: AssetsPath.shoeImage, name: 'Under Armour Flow', price: 40, category: ProductCategory.featured),
    Product(image: AssetsPath.shoeImage, name: 'Fila Memory Speed', price: 40, category: ProductCategory.featured),
    Product(image: AssetsPath.tvImage, name: 'Sharp Aquos', price: 50, category: ProductCategory.featured),
    Product(image: AssetsPath.watchImage, name: 'Garmin Forerunner', price: 35, category: ProductCategory.featured),



    Product(image: AssetsPath.watchImage, name: 'Seiko Classic', price: 35, category: ProductCategory.popular),
    Product(image: AssetsPath.shoeImage, name: 'Adidas Runner', price: 42, category: ProductCategory.popular),
    Product(image: AssetsPath.tvImage, name: 'LG OLED CX', price: 50, category: ProductCategory.popular),
    Product(image: AssetsPath.watchImage, name: 'Fossil Gen 6', price: 35, category: ProductCategory.popular),
    Product(image: AssetsPath.shoeImage, name: 'Asics Gel', price: 40, category: ProductCategory.popular),
    Product(image: AssetsPath.watchImage, name: 'Timex Expedition', price: 35, category: ProductCategory.popular),
    Product(image: AssetsPath.tvImage, name: 'Panasonic Viera', price: 50, category: ProductCategory.popular),
    Product(image: AssetsPath.shoeImage, name: 'Skechers D’Lites', price: 40, category: ProductCategory.popular),
    Product(image: AssetsPath.tvImage, name: 'Vizio SmartCast', price: 50, category: ProductCategory.popular),
    Product(image: AssetsPath.watchImage, name: 'Citizen Eco-Drive', price: 35, category: ProductCategory.popular),


    Product(image: AssetsPath.tvImage, name: 'TCL Roku TV', price: 50, category: ProductCategory.newProduct),
    Product(image: AssetsPath.watchImage, name: 'Rolex Submariner', price: 35, category: ProductCategory.newProduct),
    Product(image: AssetsPath.shoeImage, name: 'Reebok Nano', price: 40, category: ProductCategory.newProduct),
    Product(image: AssetsPath.tvImage, name: 'Hisense ULED', price: 50, category: ProductCategory.newProduct),
    Product(image: AssetsPath.tvImage, name: 'Xiaomi Smart TV', price: 50, category: ProductCategory.newProduct),
    Product(image: AssetsPath.shoeImage, name: 'New Balance 1080', price: 40, category: ProductCategory.newProduct),
    Product(image: AssetsPath.watchImage, name: 'Tissot Chrono XL', price: 35, category: ProductCategory.newProduct),
    Product(image: AssetsPath.tvImage, name: 'Philips Ambilight', price: 50, category: ProductCategory.newProduct),
    Product(image: AssetsPath.watchImage, name: 'Michael Kors Lexington', price: 35, category: ProductCategory.newProduct),
    Product(image: AssetsPath.shoeImage, name: 'Saucony Ride', price: 40, category: ProductCategory.newProduct),



    ];
  static List<Product> get featuredProducts => _products.where((p)=>p.category == ProductCategory.featured).toList();
  static List<Product> get popularProducts => _products.where((p)=>p.category == ProductCategory.popular).toList();
  static List<Product> get newProducts => _products.where((p)=>p.category == ProductCategory.newProduct).toList();
  static List<Product> get allProducts => List.unmodifiable(_products);
  }

