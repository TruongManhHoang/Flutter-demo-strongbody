import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/configs/theme/app_colors.dart';
import 'package:flutter_application_1/presentation/pages/new_models/search_page.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leadingWidth: 119.05,
      leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Image.asset(
            'assets/images/multime.png',
            height: 36,
          )),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Row(
                children: const [
                  Text(
                    'News',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Color(0xFFDA2126),
                    ),
                  ),
                  SizedBox(width: 2),
                  Icon(
                    Icons.arrow_drop_down,
                    size: 30,
                    color: Color(0xFFDA2126),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      centerTitle: true,
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 5),
          child: Row(
            children: [
              GestureDetector(
                child: Icon(
                  Icons.language,
                  color: Colors.black,
                  size: 30,
                ),
                onTap: () {},
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                child: Image.asset(
                  'assets/images/notification.png',
                ),
                onTap: () {},
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                child: const Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 30,
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SearchPage()));
                },
              ),
            ],
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(30);
}
