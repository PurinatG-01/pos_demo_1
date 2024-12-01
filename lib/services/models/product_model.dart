class ProductModel {
  final String name;
  final String description;
  final num installPrice;
  final num salePrice;

  ProductModel({
    required this.name,
    required this.description,
    required this.installPrice,
    required this.salePrice,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      name: json["name"],
      description: json["description"],
      installPrice: json["installPrice"],
      salePrice: json["salePrice"],
    );
  }
}
