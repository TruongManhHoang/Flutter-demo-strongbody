import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/pages/a.dart';
import 'package:flutter_application_1/presentation/pages/new_models/home_page.dart';

class ButtonSelect extends StatefulWidget {
  const ButtonSelect({super.key});

  @override
  State<ButtonSelect> createState() => _ButtonSelectState();
}

class _ButtonSelectState extends State<ButtonSelect> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildItem(context, "All", HomePage()),
            const SizedBox(width: 10),
            _buildItem(context, "Sports", const Hello()),
            const SizedBox(width: 10)
          ],
        ),
      ),
    );
  }
}

Widget _buildItem(BuildContext context, String title, Widget page) {
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => page),
      );
    },
    child: Text(
      title,
      style: const TextStyle(color: Colors.black, fontSize: 16),
    ),
  );
}
