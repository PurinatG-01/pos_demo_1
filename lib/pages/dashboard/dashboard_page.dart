import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pos_1/common/widgets/page_template.dart';
import 'package:pos_1/pages/dashboard/widgets/product_list.dart';

@RoutePage()
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(context) {
    return PageTemplate(
      child: Container(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: ProductList(),
        ),
      ),
    );
  }
}
