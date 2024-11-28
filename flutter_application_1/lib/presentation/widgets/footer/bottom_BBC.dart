import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/configs/theme/app_colors.dart';

class CustomBottomBbc extends StatefulWidget {
  const CustomBottomBbc({super.key});

  @override
  State<CustomBottomBbc> createState() => _CustomBottomBbcState();
}

class _CustomBottomBbcState extends State<CustomBottomBbc> {
  @override
  Widget build(BuildContext context) {
    bool _lights = false;
    return Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(4), topRight: Radius.circular(4)),
            boxShadow: [
              BoxShadow(
                  color: Color(0xFF00000040).withOpacity(0.3),
                  offset: Offset(0, -2),
                  spreadRadius: 1,
                  blurRadius: 5)
            ]),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    // isScrollControlled: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    builder: (context) {
                      return StatefulBuilder(
                        builder: (BuildContext context, StateSetter setState) {
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Center(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Image.asset('assets/images/Line.png'),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      'Comment (25)',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Image.asset('assets/images/Line 2.png'),
                                    SizedBox(
                                      height: 10,
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: ListView.builder(
                                  itemCount: 3,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 25),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CircleAvatar(
                                            backgroundImage: AssetImage(
                                                'assets/images/avatar2.png'),
                                            radius: 20,
                                          ),
                                          SizedBox(width: 12),
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      'evan_ji',
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    SizedBox(width: 8),
                                                    Text(
                                                      '@jevan11',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.grey,
                                                      ),
                                                    ),
                                                    SizedBox(width: 8),
                                                    Text(
                                                      '1h',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.grey,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 4),
                                                Text(
                                                  'Lorem Ipsum is simply dummy text of printing and typesetting industry.',
                                                  style:
                                                      TextStyle(fontSize: 14),
                                                ),
                                                SizedBox(height: 8),
                                                Row(
                                                  children: [
                                                    Text(
                                                      'Reply',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 14,
                                                          height: 14 / 17.64),
                                                    ),
                                                    Spacer(),
                                                    Icon(Icons.more_horiz)
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Container(
                                  height: 101,
                                  decoration: BoxDecoration(
                                    color: AppColors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0xFF00000040)
                                              .withOpacity(0.2),
                                          offset: Offset(0, -4),
                                          blurRadius: 4,
                                          spreadRadius: 0)
                                    ],
                                    border: Border.all(
                                        color: const Color(0xFFECECEC),
                                        width: 1),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(4),
                                        topRight: Radius.circular(4)),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(vertical: 2),
                                    child: Column(
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: MergeSemantics(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  const Text(
                                                    'Anonymous',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        height: 19.2 / 16,
                                                        letterSpacing: -0.02,
                                                        color:
                                                            Color(0xFF91959B)),
                                                  ),
                                                  Transform.scale(
                                                    scale: 0.8,
                                                    child: CupertinoSwitch(
                                                      activeColor:
                                                          Color(0xFF1F2C43),
                                                      value: _lights,
                                                      onChanged: (bool value) {
                                                        setState(() {
                                                          _lights = value;
                                                        });
                                                      },
                                                    ),
                                                  )
                                                ],
                                              ),
                                            )),
                                        Row(
                                          children: [
                                            IconButton(
                                                onPressed: () {},
                                                icon: Image.asset(
                                                    'assets/images/selectImage.png')),

                                            Container(
                                              height: 47,
                                              width: 290,
                                              padding: EdgeInsets.only(
                                                  left: 16,
                                                  top: 14,
                                                  bottom: 14,
                                                  right: 34),
                                              alignment: Alignment.centerLeft,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFE9E9E9),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: TextField(
                                                decoration: InputDecoration(
                                                  hintText:
                                                      'Enter something here',
                                                  border: InputBorder.none,
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 5),
                                            GestureDetector(
                                              onTap: () {},
                                              child: Text(
                                                'Send',
                                                style: TextStyle(
                                                    color: Color(0xFF1877F2),
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 16,
                                                    height: 16 / 19.2),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )),
                            ],
                          );
                        },
                      );
                    },
                  );
                },
                child: Image.asset('assets/images/message.png'),
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {},
                child: Image.asset('assets/images/share.png'),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                '130 Share',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  height: 16.8 / 14,
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {},
                child: Image.asset('assets/images/faver.png'),
              )
            ],
          ),
        ));
  }
}
