class Product {
  final String id;
  final String nameProduct;
  final String ProductImage;
  final String price;

  const Product({
    required this.id,
    required this.nameProduct,
    required this.ProductImage,
    required this.price,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      nameProduct: json['nameProduct'],
      ProductImage: json['ProductImage'],
      price: json['price'],
    );
  }
}
