import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:pos_1/services/products_service.dart';

Future<void> initService() async {
  final getIt = GetIt.I;
  final FirebaseFirestore db = FirebaseFirestore.instance;
  getIt.registerSingleton<FirebaseFirestore>(db);

  // final List<Service> serviceList = [
  //   ProductService(db: db),
  // ];

  getIt.registerSingleton<ProductService>(ProductService(db: db));
  // for (var service in serviceList) {
  //   // Register the specific type of service
  //   log("Registering GetIt Singleton: ${service.runtimeType.toString()}");
  //   getIt.registerSingleton(service);
  // }
}

abstract class Service {
  Service get instance => this;
}
