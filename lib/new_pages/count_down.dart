// import 'package:circular_countdown_timer/circular_countdown_timer.dart';
// import 'package:circular_countdown_timer/countdown_text_format.dart';
// import 'package:flutter/material.dart';

// class CountDown extends StatefulWidget {
//   const CountDown({super.key});

//   @override
//   State<CountDown> createState() => _CountDownState();
// }

// class _CountDownState extends State<CountDown> {
//   final int _duration = 10;
//   final CountDownController _controller = CountDownController();

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: CircularCountDownTimer(
//         duration: 10,
//         controller: _controller,
//         width: MediaQuery.of(context).size.width / 5,
//         height: MediaQuery.of(context).size.height / 5,
//         ringColor: Colors.grey.shade300,
//         ringGradient: null,
//         fillColor: Colors.blue,
//         fillGradient: null,
//         backgroundColor: null,
//         backgroundGradient: null,
//         strokeWidth: 10.0,
//         strokeCap: StrokeCap.round,
//         textStyle: const TextStyle(
//           fontSize: 23.0,
//           color: Colors.black,
//           fontWeight: FontWeight.bold,
//         ),
//         textFormat: CountdownTextFormat.S,
//         isReverse: true,
//         isReverseAnimation: false,
//         isTimerTextShown: true,
//       ),
//     );
//   }
// }




import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';

class CountDown extends StatefulWidget {

  const CountDown({Key? key,}) : super(key: key);

  @override
  State<CountDown> createState() => _CountDownState();
}

class _CountDownState extends State<CountDown> {
  final int _duration = 10;
  bool isTimerComplete = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularCountDownTimer(
        duration: _duration,
        width: MediaQuery.of(context).size.width / 5,
        height: MediaQuery.of(context).size.height / 5,
        ringColor: Colors.grey.shade300,
        ringGradient: null,
        fillColor: Colors.blue,
        fillGradient: null,
        backgroundColor: null,
        backgroundGradient: null,
        strokeWidth: 10.0,
        strokeCap: StrokeCap.round,
        textStyle: const TextStyle(
          fontSize: 23.0,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        textFormat: CountdownTextFormat.S,
        isReverse: true,
        isReverseAnimation: false,
        isTimerTextShown: true,
        onComplete: () {
          if (!isTimerComplete) {
            isTimerComplete = true;
          }
        },
      ),
    );
  }
}
