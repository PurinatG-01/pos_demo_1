import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pos_1/common/widgets/page_template.dart';

@RoutePage()
class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageTemplate(child: Text("Settings"));
  }
}
