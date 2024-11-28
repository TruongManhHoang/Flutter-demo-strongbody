import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/configs/theme/app_colors.dart';
import 'package:flutter_application_1/presentation/widgets/footer/bottom_BBC.dart';
import 'package:flutter_application_1/presentation/widgets/header/appBar_BBC.dart';
import 'package:flutter_application_1/presentation/widgets/header/header.dart';
import 'package:flutter_application_1/presentation/widgets/home_new_models/list_view_widget.dart';
import 'package:flutter_application_1/presentation/widgets/home_new_models/widgetTheme.dart';

class BbcNewPage extends StatefulWidget {
  const BbcNewPage({super.key});

  @override
  State<BbcNewPage> createState() => _BbcNewPageState();
}

class _BbcNewPageState extends State<BbcNewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarBbc(),
      body: _Body(),
      bottomNavigationBar: CustomBottomBbc(),
    );
  }
}

class _Body extends StatefulWidget {
  const _Body({super.key});

  @override
  State<_Body> createState() => __BodyState();
}

class __BodyState extends State<_Body> {
  bool _lights = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset('assets/images/Ellipse.png'),
              SizedBox(
                width: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dr.Laura Nguyen',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.12),
                  ),
                  Text(
                    '14m ago',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.12),
                  )
                ],
              ),
              Spacer(),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFDA2126),
                      foregroundColor: AppColors.white,
                      fixedSize: Size(85, 43),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6))),
                  child: Text(
                    'View',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ))
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Image.asset('assets/images/wedding.png'),
          SizedBox(
            height: 15,
          ),
          Text(
            'Healthy living: Diet and exercise Tips & Tools for Success',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.w500, letterSpacing: 0.12),
            maxLines: 2,
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Text(
                'Sport',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.12),
              ),
              Spacer(),
              Text(
                '20/09/2023',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.12),
              )
            ],
          ),
          Text(
            'Ukrainian President Volodymyr Zelensky has accused European countries that continue to buy Russian oil of "earning their money in other peoples blood.\n'
            '\n'
            'In an interview with the BBC, President Zelensky singled out Germany and Hungary, accusing them of blocking efforts to embargo energy sales, from which Russia stands to make up to £250bn (326bn) this year.\n'
            'n'
            'There has been a growing frustration among Ukraine"s leadership with Berlin, which has backed some sanctions against Russia but so far resisted calls to back tougher action on oil sales. \n'
            '\n'
            'There has been a growing frustration among Ukraine"s leadership with Berlin, which has backed some sanctions against Russia but so far resisted calls to back tougher action on oil sales.',
            style: TextStyle(
                fontSize: 16,
                color: Color(0xFF4E4B66),
                fontWeight: FontWeight.w400,
                height: 24 / 16,
                letterSpacing: 0.12),
          ),
          Row(
            children: [
              Text('Source:', style: TextStyle(fontSize: 17)),
              TextButton(
                  onPressed: () {
                    showModelBottomSheetSource(context);
                  },
                  child: Text(
                    'ABC New - http://abcnews.go.com/',
                    style: TextStyle(fontSize: 15, color: Colors.blueAccent),
                  )),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Other news',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(left: 5),
            child: ListViewWidget(),
          )
        ],
      ),
    ));
  }
}

void showModelBottomSheetSource(BuildContext context) {
  showBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return Container(
          height: 800,
          width: 428,
          decoration: BoxDecoration(
              color: AppColors.white,
              border: Border.all(color: Color(0xFF1F2D44), width: 1),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                    color: Color(0xFF00000040).withOpacity(0.2),
                    offset: Offset(0, 4),
                    blurRadius: 4,
                    spreadRadius: 0)
              ]),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(top: 10, right: 20, bottom: 10, left: 20),
                  child: Container(
                    padding: EdgeInsets.only(left: 300),
                    height: 42,
                    child: Text(
                      'Done',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          height: 21.6 / 18,
                          color: Color(0xFF1877F2)),
                    ),
                  ),
                ),
                Image.asset('assets/images/gettyimages.png'),
                Padding(
                  padding:
                      EdgeInsets.only(top: 14, right: 29, bottom: 14, left: 20),
                  child: Container(
                    height: 74,
                    child: Row(
                      children: [
                        Image.asset('assets/images/mick-krever.png'),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'By Mick Krever, CNN',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              height: 21 / 14,
                              color: Color(0xFF1F2D44),
                              letterSpacing: 0.02),
                        ),
                        Spacer(),
                        Text('1 hour',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                height: 21 / 14,
                                color: Color(0xFF1F2D44),
                                letterSpacing: 0.02))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(top: 2, right: 10, bottom: 2, left: 10),
                  child: Container(
                    height: 28,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Image.asset('assets/images/message.png'),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '8 comments',
                                style: TextStyle(
                                    fontSize: 14,
                                    height: 21 / 14,
                                    letterSpacing: 0.02,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Image.asset('assets/images/faver.png'),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '34 likes',
                                style: TextStyle(
                                    fontSize: 14,
                                    height: 21 / 14,
                                    letterSpacing: 0.02,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Image.asset('assets/images/message.png'),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Share',
                                style: TextStyle(
                                    fontSize: 14,
                                    height: 21 / 14,
                                    letterSpacing: 0.02,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ukrainian President Volodymyr Zelensky has accused European countries that continue to buy Russian oil of "earning their money in other people\'s blood".\n\n'
                            'In an interview with the BBC, President Zelensky singled out Germany and Hungary, accusing them of blocking efforts to embargo energy sales, from which Russia stands to make up to £250bn (\$326bn) this year.\n\n'
                            'There has been a growing frustration among Ukraine\'s leadership with Berlin, which has backed some sanctions against Russia but so far resisted calls to back tougher action on oil sales.\n\n'
                            'There has been a growing frustration among Ukraine\'s leadership with Berlin, which has backed some sanctions against Russia but so far resisted calls to back tougher action on oil sales.\n\n',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                height: 24 / 16,
                                letterSpacing: 0.12),
                          ),
                          RichText(
                            text: TextSpan(
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  height: 1.5,
                                  color: Colors.black,
                                  letterSpacing: 0.12,
                                ),
                                children: [
                                  TextSpan(
                                      text: 'Source: ',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                      )),
                                  TextSpan(
                                      text: 'https://abcnews.go.com',
                                      style: TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline))
                                ]),
                          )
                        ],
                      )),
                )
              ],
            ),
          ),
        );
      });
}

void showOption(BuildContext context) {
  showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
            height: 233,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(top: 14, bottom: 14),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16), topRight: Radius.circular(16)),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, -4),
                    blurRadius: 6,
                    spreadRadius: 0,
                    color: Color(0xFF00000026).withOpacity(0.2))
              ],
            ),
            child: Column(
              children: [
                Image.asset('assets/images/Line.png'),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  child: Container(
                    height: 38,
                    child: Text(
                      'Option',
                      style: TextStyle(
                        fontFamily: 'Plus Jakarta Sans',
                        color: Color(0xFF041E2F),
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        height: 30.24 / 24,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Image.asset('assets/images/Line 129.png'),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    showCustom(context);
                  },
                  child: Container(
                    height: 32,
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    child: Row(
                      children: [
                        Image.asset('assets/images/Exclude.png'),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          height: 23,
                          width: 319,
                          child: Text(
                            'Custom',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                height: 22.5 / 18,
                                color: Color(0xFF91959B)),
                          ),
                        ),
                        Image.asset('assets/images/chevron-right.png'),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Image.asset('assets/images/Line 129.png'),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 32,
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  child: Row(
                    children: [
                      Image.asset('assets/images/warning-2.jpg'),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 23,
                        width: 320,
                        child: Text(
                          'Report this article',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              height: 22.5 / 18,
                              color: Color(0xFF91959B)),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset('assets/images/Line 129.png'),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 31,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Close',
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF979797),
                            height: 22.68 / 18,
                            fontWeight: FontWeight.w700),
                        textAlign: TextAlign.center,
                      )),
                )
              ],
            ),
          ));
}

void showCustom(BuildContext context) {
  double _sliderValue = 0;
  double _sliderBrightness = 0;
  double spacing = 10;

  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    builder: (context) {
      return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return Container(
            padding: EdgeInsets.symmetric(vertical: 14),
            height: 523,
            width: 428,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF00000026).withOpacity(0.2),
                  offset: Offset(0, -4),
                  blurRadius: 6,
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Column(
              children: [
                Image.asset('assets/images/Line.png'),
                SizedBox(height: spacing / 2),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: spacing),
                  child: Text(
                    'Custom',
                    style: TextStyle(
                      color: Color(0xFF041E2F),
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      height: 30.24 / 24,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: spacing),
                Image.asset('assets/images/Line 129.png'),
                SizedBox(height: spacing),
                _buildFontStyleSection(spacing),
                SizedBox(height: spacing),
                Image.asset('assets/images/Line 129.png'),
                SizedBox(height: spacing),

                // _buildFontSizeSection(_sliderValue, setState, 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: spacing * 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Font size',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: spacing),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          color: Color(0xFFF0EEF2),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          children: [
                            Text(
                              'A',
                              style: TextStyle(fontSize: 14),
                            ),
                            Expanded(
                              child: Slider(
                                activeColor: Colors.blue,
                                inactiveColor: Colors.grey,
                                value: _sliderValue,
                                min: 0,
                                max: 100,
                                divisions: 10,
                                label: '${_sliderValue.round()}',
                                onChanged: (double newValue) {
                                  setState(() {
                                    _sliderValue = newValue;
                                  });
                                },
                              ),
                            ),
                            Text(
                              'A',
                              style: TextStyle(fontSize: 24),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: spacing),
                Image.asset('assets/images/Line 129.png'),
                SizedBox(height: spacing),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: spacing * 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Brightness',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: spacing),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                            color: Color(0xFFF0EEF2),
                            borderRadius: BorderRadius.circular(16)),
                        child: Row(
                          children: [
                            Image.asset('assets/images/sun_grey.png'),
                            Expanded(
                              child: Slider(
                                activeColor: _sliderBrightness < 50
                                    ? Colors.blue
                                    : Colors.red,
                                inactiveColor: Colors.grey,
                                value: _sliderBrightness,
                                min: 0,
                                max: 100,
                                label: '${_sliderBrightness.round()}',
                                onChanged: (double newValue) {
                                  setState(() {
                                    _sliderBrightness = newValue;
                                  });
                                },
                              ),
                            ),
                            Image.asset('assets/images/sun_bold.png'),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: spacing),
                Image.asset('assets/images/Line 129.png'),
                SizedBox(height: spacing),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Text(
                    'Close',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF979797)),
                  ),
                )
              ],
            ),
          );
        },
      );
    },
  );
}

Widget _buildFontStyleSection(double spacing) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: spacing * 2),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Font style',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: spacing),
        Row(
          children: [
            Expanded(
              child: Container(
                width: 184,
                height: 60,
                padding: EdgeInsets.all(spacing),
                decoration: BoxDecoration(
                  color: Color(0xFFF0EEF2),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Plus Jkarta',
                    style: TextStyle(
                      color: Color(0xFF0062FF),
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: spacing),
            Expanded(
              child: Container(
                width: 184,
                height: 60,
                padding: EdgeInsets.all(spacing),
                decoration: BoxDecoration(
                  color: Color(0xFFF0EEF2),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Bookerly',
                    style: TextStyle(
                      color: Color(0xFF91959B),
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _buildFontSizeSection(
    double sliderValue, StateSetter setState, double spacing) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: spacing * 2),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Font size',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: spacing),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: Color(0xFFF0EEF2),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            children: [
              Text(
                'A',
                style: TextStyle(fontSize: 14),
              ),
              Expanded(
                child: Slider(
                  activeColor: Color(0xFF0062FF),
                  value: sliderValue,
                  min: 0,
                  max: 100,
                  divisions: 10,
                  label: '${sliderValue.round()}',
                  onChanged: (double newValue) {
                    setState(() {
                      sliderValue = newValue;
                    });
                  },
                ),
              ),
              Text(
                'A',
                style: TextStyle(fontSize: 24),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _buildBrightnessSection(
    double _sliderBrightness, StateSetter setState, double spacing) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: spacing * 2),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Brightness',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: spacing),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
              color: Color(0xFFF0EEF2),
              borderRadius: BorderRadius.circular(16)),
          child: Row(
            children: [
              Image.asset('assets/images/sun_grey.png'),
              Expanded(
                child: Slider(
                  activeColor: Color(0xFFFFFFFF),
                  inactiveColor: Colors.grey,
                  value: _sliderBrightness,
                  min: 0,
                  max: 100,
                  label: '${_sliderBrightness.round()}',
                  onChanged: (double newValue) {
                    setState(() {
                      _sliderBrightness = newValue;
                    });
                  },
                ),
              ),
              Image.asset('assets/images/sun_bold.png'),
            ],
          ),
        )
      ],
    ),
  );
}
