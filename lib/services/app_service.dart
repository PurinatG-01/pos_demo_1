import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> initService() async {
  final db = FirebaseFirestore.instance;
  final products = await db.collection("products").get();
  products;
}
