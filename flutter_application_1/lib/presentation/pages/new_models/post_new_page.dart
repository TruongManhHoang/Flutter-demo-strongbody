import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/configs/theme/app_colors.dart';

class PostNewPage extends StatefulWidget {
  const PostNewPage({super.key});

  @override
  State<PostNewPage> createState() => _PostNewPageState();
}

class _PostNewPageState extends State<PostNewPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: AppColors.white,
              leading: Padding(
                padding: EdgeInsets.only(left: 25),
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios)),
              ),
              centerTitle: true,
              title: Text(
                'Post news',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
              ),
            ),
            body: Body(),
            bottomNavigationBar: BottomPostBar()));
  }
}

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<String> categories = [
    'Electronics',
    'Clothing',
    'Home & Kitchen',
    'Sports',
    'Books'
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DottedBorder(
            color: Color(0xFF4E4B66),
            strokeWidth: 1.0,
            borderType: BorderType.RRect,
            radius: Radius.circular(6),
            dashPattern: [17, 5],
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Container(
                height: 183,
                width: 375,
                color: Color(0xFFEEF1F4),
                child: Stack(
                  children: [
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add,
                            color: Color(0xFF4E4B66),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Add Cover Photo',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF4E4B66)),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                        bottom: 15,
                        right: 17,
                        child: Image.asset('assets/images/pen.png')),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          TextFormField(
            decoration: InputDecoration(
              label: RichText(
                text: TextSpan(
                  text: 'News title',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFCBD5E0),
                  ),
                  children: [
                    TextSpan(
                      text: '*',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          DropdownButtonFormField<String>(
              decoration: InputDecoration(
                  hintText: 'Category',
                  hintStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFCBD5E0),
                  )),
              items: categories
                  .map((category) => DropdownMenuItem<String>(
                        value: category,
                        child: Text(category),
                      ))
                  .toList(),
              onChanged: (value) {}),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: 'Country',
                hintStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFCBD5E0),
                )),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: InputDecoration(
              label: RichText(
                text: TextSpan(
                  text: 'Article source',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFCBD5E0),
                  ),
                  children: [
                    TextSpan(
                      text: '*',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Content',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: 'Copy content from Article here',
                hintStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF91959B)),
                border: InputBorder.none),
          )
        ],
      ),
    ));
  }
}

class BottomPostBar extends StatelessWidget {
  const BottomPostBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 10,
            offset: Offset(0, -2),
          ),
        ],
        // borderRadius: BorderRadius.only(
        //   topLeft: Radius.circular(12),
        //   topRight: Radius.circular(12),
        // ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {},
            child: Image.asset(
              'assets/images/iconPost/iconImage.png',
            ),
          ),
          SizedBox(
            width: 20,
          ),
          GestureDetector(
            onTap: () {},
            child: Image.asset(
              'assets/images/iconPost/iconA.png',
            ),
          ),
          SizedBox(
            width: 20,
          ),
          GestureDetector(
            onTap: () {},
            child: Image.asset(
              'assets/images/iconPost/left.png',
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            decoration: BoxDecoration(
                // boxShadow: [
                //   BoxShadow(
                //     color: Color.fromARGB(0, 220, 220, 221).withOpacity(0.1),
                //     spreadRadius: 1,
                //     blurRadius: 10,
                //     offset: Offset(0, 1),
                //   )
                // ],
                border: Border.all(color: Color(0xFF00000014)),
                borderRadius: BorderRadius.circular(1)),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Image.asset(
                    'assets/images/iconPost/B.png',
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Image.asset(
                    'assets/images/iconPost/I.png',
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Image.asset(
                    'assets/images/iconPost/A.png',
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Image.asset(
                    'assets/images/iconPost/C.png',
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              minimumSize: Size(80, 50),
              backgroundColor: Color(0xFFF75555),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Text(
              'Post',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
