import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pos_1/app_router.dart';

class PageTemplate extends StatelessWidget {
  PageTemplate({
    super.key,
    required this.child,
  });

  final Widget child;
  final itemList = [
    POSBottomNavigationBarItem(
      icon: Icon(Icons.dashboard),
      label: "Dashboard",
      appPath: AppPath.dashboard,
    ),
    POSBottomNavigationBarItem(
      icon: Icon(Icons.bar_chart),
      label: "Stats",
      appPath: AppPath.stats,
    ),
    POSBottomNavigationBarItem(
      icon: Icon(Icons.settings),
      label: "Settings",
      appPath: AppPath.settings,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("POS Demo #1", style: TextStyle(fontSize: 18)),
      ),
      body: child,
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            itemList[index].onTap.call(context);
          },
          items: itemList),
    );
  }
}

class POSBottomNavigationBarItem extends BottomNavigationBarItem {
  POSBottomNavigationBarItem({
    required super.icon,
    required super.label,
    required this.appPath,
  });

  final AppPath appPath;

  void onTap(BuildContext context) {
    context.router.replaceNamed(appPath.path);
  }
}
