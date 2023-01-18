class Product {
  Product({required this.name, required this.imageUrl, required this.price});

  final String name;
  final String imageUrl;
  final int price;
  bool isAddCart = false;

  factory Product.fromMap(Map<String, dynamic> data) {
    return Product(name: data['author'], imageUrl: data['download_url'], price: data['width']);
  }
}
