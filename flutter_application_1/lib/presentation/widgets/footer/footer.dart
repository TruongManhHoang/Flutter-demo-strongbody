import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/configs/theme/app_colors.dart';
import 'package:flutter_application_1/presentation/pages/a.dart';
import 'package:flutter_application_1/presentation/pages/new_models/bbc_new_page.dart';
import 'package:flutter_application_1/presentation/pages/new_models/home_page.dart';
import 'package:flutter_application_1/presentation/pages/new_models/post_new_page.dart';
import 'package:flutter_application_1/presentation/pages/new_models/review_post_page.dart';
import 'package:flutter_application_1/presentation/pages/new_models/show_like_page.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int _selectedIndex = 0;

  final List<Widget> _page = [
    HomePage(),
    ShowLikePage(),
    PostNewPage(),
    Hello(),
    BbcNewPage()
  ];

  void _onItemTapped(int index) {
    Navigator.push(
            context, MaterialPageRoute(builder: (context) => _page[index]))
        .then((_) {
      setState(() {
        _selectedIndex = index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 104.38,
      decoration: BoxDecoration(
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
                color: Color(0xFF00000040).withOpacity(0.2),
                spreadRadius: 0,
                blurRadius: 24.2,
                offset: Offset(0, -2))
          ],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home_outlined,
                size: 35,
                color: Color(0xFFDB1F26),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_bag_outlined,
                size: 35,
                color: Color(0xFF91959B),
              ),
            ),
            IconButton(
              onPressed: () {
                _showPopupMenu(context);
              },
              icon: Icon(
                Icons.add_box_rounded,
                size: 70,
                color: Color(0xFFF44336),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/images/email 2.png',
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                size: 35,
              ),
            )
          ],
        ),
      ),
    );
  }
}

void _showPopupMenu(BuildContext context) {
  showMenu(
    context: context,
    position: RelativeRect.fromLTRB(0, 450, 100, 0),
    items: [
      PopupMenuItem(
          value: 1,
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PostNewPage()));
            },
            child: Container(
                width: 404,
                height: 70,
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                child: Row(
                  children: [
                    Image.asset('assets/images/edit.png'),
                    SizedBox(
                      width: 12,
                    ),
                    Container(
                      width: 99,
                      height: 24,
                      child: Text(
                        'Post news',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            height: 24 / 20),
                      ),
                    )
                  ],
                )),
          )),
      PopupMenuItem(
          value: 2,
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ReviewPostPage()));
            },
            child: Container(
                width: 404,
                height: 70,
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                child: Row(
                  children: [
                    Image.asset('assets/images/signpost.png'),
                    SizedBox(
                      width: 12,
                    ),
                    Container(
                      width: 99,
                      height: 24,
                      child: Text(
                        'Review your posts',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            height: 24 / 20),
                      ),
                    )
                  ],
                )),
          )),
      PopupMenuItem(
          value: 3,
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ShowLikePage()));
            },
            child: Container(
                width: 404,
                height: 70,
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                child: Row(
                  children: [
                    Image.asset('assets/images/notification-favorite.png'),
                    SizedBox(
                      width: 12,
                    ),
                    Container(
                      width: 99,
                      height: 24,
                      child: Text(
                        'Liked',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            height: 24 / 20),
                      ),
                    ),
                    // SizedBox(
                    //   width: 200,
                    // )
                  ],
                )),
          )),
    ],
  );
}
