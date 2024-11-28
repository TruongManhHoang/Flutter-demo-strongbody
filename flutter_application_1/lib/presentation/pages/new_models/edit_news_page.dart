import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/configs/theme/app_colors.dart';

class EditNewsPage extends StatelessWidget {
  const EditNewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            'Edit news',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
          ),
        ),
        body: Body(),
        bottomNavigationBar: BottomPostBar());
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
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Container(
              child: Stack(
                children: [
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Image.asset('assets/images/wedding.png')],
                    ),
                  ),
                  Positioned(
                      bottom: 15,
                      right: 17,
                      child: Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: Image.asset('assets/images/pen2.png'),
                      )),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          TextFormField(
            initialValue:
                'Healthy living: Diet and exercise Tips & Tool for Success',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.w500, height: 1.5),
            maxLines: 2,
            keyboardType: TextInputType.multiline,
          ),
          SizedBox(
            height: 10,
          ),
          DropdownButtonFormField<String>(
              value: categories[0],
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
            initialValue: 'https://www.google.com.vn/',
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
            initialValue: 'England',
            decoration: InputDecoration(),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Content',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          ),
          TextFormField(
            initialValue:
                '“These groups will be directly involved in combat operations in the short term on the territory of Ukraine. They are highly likely to emerge in the occupied territories of Ukraine as well,” the commander said.\n'
                '\n'
                'He said the North Korean troops were a “significant resource” for Russia’s war on Ukraine, as even those being deployed defensively would free up Russian troops for assault operations elsewhere and would themselves eventually be used in direct combat.\n'
                '\n'
                '“In military terms, they amount to three full-blooded brigades. Imagine that now the enemy withdraws 10,000 soldiers from the second line of defense, puts soldiers from North Korea there, and sends these three brigades to one of the (places where) active hostilities are underway. Are three full-blooded brigades a significant resource? Yes, it is a significant resource,” Fedorenko said.',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.black,
              height: 1.5,
            ),
            decoration: InputDecoration(
              hintText: 'Copy content from Article here',
              hintStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFF91959B),
              ),
              border: InputBorder.none,
            ),
            maxLines: null, // Không giới hạn dòng
            keyboardType: TextInputType.multiline, // Cho phép nhiều dòng
          ),
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
