import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/widgets/footer/footer.dart';
import 'package:flutter_application_1/presentation/widgets/home_new_models/list_view_widget.dart';

class WidgetNew extends StatelessWidget {
  const WidgetNew({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: ListViewWidget(),
          ),
        ),
      ),
      CustomNavigationBar(),
    ]);
  }
}
