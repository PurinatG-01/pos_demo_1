import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pos_1/common/widgets/page_template.dart';

@RoutePage()
class StatsPage extends StatelessWidget {
  const StatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageTemplate(child: Text("Stats"));
  }
}
