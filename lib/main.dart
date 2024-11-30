// assuming this is the root widget of your App
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pos_1/app_router.dart';
import 'package:pos_1/firebase_options.dart';
import 'package:pos_1/services/app_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await initService();
  runApp(App());
}

class App extends StatelessWidget {
  // make sure you don't initiate your router
  // inside of the build function.
  final _appRouter = AppRouter();

  App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
    );
  }
}
