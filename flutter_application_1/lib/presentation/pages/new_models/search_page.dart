import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/configs/theme/app_colors.dart';
import 'package:flutter_application_1/presentation/widgets/home_new_models/widget_category.dart';
import 'package:flutter_application_1/presentation/widgets/home_new_models/widget_new.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  bool _isRightScreen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.only(left: 25),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image.asset('assets/images/back.png'),
          ),
        ),
        title: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: const Color(0xFFF4F4F4),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            children: [
              const Icon(Icons.search, color: Colors.grey),
              const SizedBox(width: 10),
              Expanded(
                child: TextFormField(
                  onChanged: (value) {
                    setState(() {
                      _isRightScreen = value.isNotEmpty;
                    });
                  },
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  _buildCustomFilter();
                },
                child: Image.asset('assets/images/Horizontal.png'),
              )
            ],
          ),
        ),
      ),
      body: _isRightScreen ? _buildRightScreen() : _buildLeftScreen(),
    );
  }

  void _buildCustomFilter() {
    showModalBottomSheet(
        context: context,
        builder: (context) => Container(
            height: 402,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(vertical: 14),
            decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16))),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Filter',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w700),
                      ),
                      Spacer(),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              foregroundColor: Color(0xFF000000),
                              backgroundColor: AppColors.white,
                              alignment: Alignment.center,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              )),
                          onPressed: () {},
                          child: Row(
                            children: [
                              Image.asset('assets/images/trash.png'),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Reset',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w600),
                              )
                            ],
                          ))
                    ],
                  )
                ],
              ),
            )));
  }

  Widget _buildLeftScreen() {
    return Container(
      height: 200,
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Column(children: [
        Column(
          children: List.generate(
            3,
            (index) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 30,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Diddy',
                    style: TextStyle(
                      color: Color(0xFF91959B),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.2,
                      height: 19.6 / 14,
                    ),
                  ),
                ),
                Divider(
                  color: Color(0xFFF1F1F1),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 40,
          padding: EdgeInsets.all(10),
          child: Container(
            child: Text(
              'Show more',
              style: TextStyle(
                color: Color(0xFF91959B),
                fontSize: 14,
                fontWeight: FontWeight.w400,
                height: 19.6 / 14,
                letterSpacing: 0.2,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ]),
    );
  }

  Widget _buildRightScreen() {
    return Container(
      width: 388,
      child: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              TabBar(
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                indicatorColor: Colors.red,
                indicatorWeight: 2.5,
                tabs: const [
                  Tab(text: 'News'),
                  Tab(text: 'Category'),
                  Tab(text: 'Profile'),
                ],
              ),
              Expanded(
                  child: TabBarView(children: [
                WidgetNew(),
                WidgetCategory(),
                _buildSettingsScreen()
              ]))
            ],
          )),
    );
  }

  Widget _buildHomeScreen() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.home, size: 100, color: Colors.blue),
          Text(
            "Home Screen",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _buildFavoritesScreen() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.favorite, size: 100, color: Colors.red),
          Text(
            "Favorites Screen",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _buildSettingsScreen() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.settings, size: 100, color: Colors.green),
          Text(
            "Settings Screen",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
