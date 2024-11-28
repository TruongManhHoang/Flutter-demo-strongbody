import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/configs/theme/app_colors.dart';
import 'package:flutter_application_1/presentation/pages/new_models/show_post_new_page%20.dart';
import 'package:flutter_application_1/presentation/widgets/footer/footer.dart';
import 'package:flutter_application_1/presentation/widgets/header/header.dart';
import 'package:flutter_application_1/presentation/widgets/home_new_models/Button.dart';
import 'package:flutter_application_1/presentation/widgets/home_new_models/card_invite.dart';
import 'package:flutter_application_1/presentation/widgets/home_new_models/list_view_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: _Body(),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}

class _Body extends StatefulWidget {
  const _Body({super.key});

  @override
  State<_Body> createState() => __BodyState();
}

class __BodyState extends State<_Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ButtonSelect(),
          SizedBox(
            height: 5,
          ),
          Text(
            'Hot news',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ShowPostNewPage()));
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/images/1.png',
                      width: 350,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Europe',
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  'Lorem ipsum dolar sit sample text goes here',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.account_circle,
                      size: 20,
                    ),
                    Text(
                      'Diddy',
                      style: TextStyle(color: Color(0xFF4E4B66), fontSize: 13),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Invite more contact',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: CardInvite(),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Latest',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Spacer(),
              Text(
                'See all',
                style: TextStyle(
                  fontSize: 14,
                ),
              )
            ],
          ),
          // Padding(
          //   padding: EdgeInsets.only(left: 5),
          //   child: Flexible(
          //     // child: SingleChildScrollView(
          //     child: ListViewWidget(),
          //     // ),
          //   ),
          // )
          Padding(
            padding: EdgeInsets.only(left: 5),
            child: ListViewWidget(),
          )
        ],
      ),
    ));
  }
}
