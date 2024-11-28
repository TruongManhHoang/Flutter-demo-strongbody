import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/widgets/footer/footer.dart';
import 'package:flutter_application_1/presentation/widgets/home_new_models/list_view_widget.dart';

class WidgetCategory extends StatelessWidget {
  const WidgetCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: List.generate(
                  7,
                  (index) => Column(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child:
                                      Image.asset('assets/images/unsplash.png'),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Health',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            height: 24 / 16,
                                            letterSpacing: 0.12),
                                      ),
                                      Container(
                                        height: 42,
                                        width: 207,
                                        child: Text(
                                          'View the latest health news and exolore articles on...',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              height: 21 / 14,
                                              letterSpacing: 0.12),
                                          maxLines: 2,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    width: 60,
                                    height: 30,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Color(0xFFDA2126), width: 1),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Text(
                                      'View',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Color(0xFFDA2126),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          )
                        ],
                      )),
            ),
          ),
        ),
      ),
      CustomNavigationBar(),
    ]);
  }
}
