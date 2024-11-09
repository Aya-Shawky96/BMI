import 'package:flutter/material.dart';

class BMI_2 extends StatelessWidget {
  final int result;
  final bool isMale;
  final int age;

  BMI_2({
    required this.result,
    required this.isMale,
    required this.age,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400], 
      appBar: AppBar(
        backgroundColor: Colors.black, 
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.health_and_safety, color: Colors.white),
            SizedBox(width: 8),
            Text(
              "BMI Calculator",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
            
            },
            icon: Icon(Icons.share, color: Colors.white),
          ),
        ],
      ),
      body: Center(
        child: Container(
          height: 250,
          width: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.black, 
            boxShadow: [
              BoxShadow(
                color: Colors.black54,
                blurRadius: 10,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Gender: ${isMale ? 'Male' : 'Female'}',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Result: $result',
                style: TextStyle(
                  color: Colors.lightGreenAccent, 
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Age: $age',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class BMI_2 extends StatelessWidget {
//   final int result;
//   final bool isMale;
//   final int age;

//   BMI_2({
//     required this.result,
//     required this.isMale,
//     required this.age,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black45,
//       appBar: AppBar(
//         backgroundColor: Colors.black87,
//         leading: IconButton(
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             icon: Icon(Icons.arrow_back_ios)),
//         title: Text("BMI"),
//       ),
//       body: Center(
//         child: Container(
//           height: 180,
//           width: 180,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadiusDirectional.circular(15),
//             color: Colors.black87,
//           ),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Text(
//                 'gender : ${isMale ? 'Male' : 'Female'} ',
//                 style: TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 18),
//               ),
//               Text(
//                 'Result : $result',
//                 style: TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 18),
//               ),
//               Text(
//                 'Age : $age',
//                 style: TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 18),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


