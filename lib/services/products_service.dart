import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pos_1/services/models/product_model.dart';

import 'app_service.dart';

class ProductService implements Service {
  late CollectionReference<Map<String, dynamic>> _collection;

  ProductService({
    required FirebaseFirestore db,
  }) {
    _collection = db.collection('products');
  }

  @override
  ProductService get instance => this;

  Future<List<ProductModel>> getAll() async {
    final rawData = await _collection.get();
    List<ProductModel> list = [];
    for (var doc in rawData.docs) {
      final data = doc.data();
      list.add(ProductModel.fromJson(data));
    }
    await Future.delayed(const Duration(seconds: 1));
    return list;
  }
}
