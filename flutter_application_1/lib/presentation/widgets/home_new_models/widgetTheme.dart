import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Widgettheme extends StatefulWidget {
  const Widgettheme({super.key});

  @override
  State<Widgettheme> createState() => _WidgetthemeState();
}

class _WidgetthemeState extends State<Widgettheme> {
  double _sliderValue = 0;
  double _slidersun = 0;
  bool _lights = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 359.5,
          height: 46,
          decoration: BoxDecoration(
            color: Color(0xFFF0EEF2),
            borderRadius: BorderRadius.circular(46),
          ),
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            children: [
              Text('A',
                  style: TextStyle(
                      fontSize: 14,
                      height: 17.64 / 14,
                      fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center),
              Expanded(
                child: SliderTheme(
                  data: SliderThemeData(
                    activeTrackColor: Colors.blue,
                    inactiveTrackColor: Colors.grey,
                    thumbColor: Colors.blue,
                    overlayColor: Colors.blue.withOpacity(0.2),
                    tickMarkShape: RoundSliderTickMarkShape(),
                    activeTickMarkColor: Colors.blue,
                    inactiveTickMarkColor: Colors.grey,
                  ),
                  child: Slider(
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
              ),
              Text(
                'A',
                style: TextStyle(
                    fontSize: 24,
                    height: 30.24 / 24,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        // SizedBox(
        //   height: 30,
        // ),
        // Container(
        //   width: 377.5,
        //   height: 40,
        //   decoration: BoxDecoration(
        //     color: Color(0xFFF0EEF2),
        //     borderRadius: BorderRadius.circular(46),
        //   ),
        //   padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        //   child: Row(
        //     children: [
        //       Image.asset('assets/images/sun_grey.png'),
        //       Expanded(
        //         child: SliderTheme(
        //           data: SliderThemeData(
        //             activeTrackColor: Colors.blue,
        //             inactiveTrackColor: Colors.grey,
        //             thumbColor: Colors.blue,
        //             overlayColor: Colors.blue.withOpacity(0.2),
        //             tickMarkShape: RoundSliderTickMarkShape(),
        //             activeTickMarkColor: Colors.blue,
        //             inactiveTickMarkColor: Colors.grey,
        //           ),
        //           child: Slider(
        //             value: _slidersun,
        //             min: 0,
        //             max: 100,
        //             divisions: 10,
        //             label: '${_slidersun.round()}',
        //             onChanged: (double newValue) {
        //               setState(() {
        //                 _slidersun = newValue;
        //               });
        //             },
        //           ),
        //         ),
        //       ),
        //       Image.asset('assets/images/sun_bold.png')
        //     ],
        //   ),
        // ),
      ],
    );
  }
}
