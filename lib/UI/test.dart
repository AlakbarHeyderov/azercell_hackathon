// // Copyright 2019 The Flutter team. All rights reserved.
// // Use of this source code is governed by a BSD-style license that can be
// // found in the LICENSE file.

// import 'package:flutter/material.dart';


// class _RadioDemo extends StatefulWidget {
//   @override
//   _RadioDemoState createState() => _RadioDemoState();
// }

// class _RadioDemoState extends State<_RadioDemo> with RestorationMixin {
//   final RestorableInt radioValue = RestorableInt(0);

//   @override
//   String get restorationId => 'radio_demo';

//   @override
//   void restoreState(RestorationBucket oldBucket, bool initialRestore) {
//     registerForRestoration(radioValue, 'radio_value');
//   }

//   void handleRadioValueChanged(int value) {
//     setState(() {
//       radioValue.value = value;
//     });
//   }

//   @override
//   void dispose() {
//     radioValue.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           for (int index = 0; index < 3; ++index)
//             Radio<int>(
//               value: index,
//               groupValue: radioValue.value,
//               onChanged: handleRadioValueChanged(),
//             ),
//         ],
//       ),
//     );
//   }
// }

