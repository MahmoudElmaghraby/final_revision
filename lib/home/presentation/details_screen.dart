// import 'package:final_revision/item_model.dart';
// import 'package:flutter/material.dart';

// class DetailsScreen extends StatelessWidget {
//   final Item item;

//   DetailsScreen({required this.item});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(item.title),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: <Widget>[
//             Image.network(
//               item.imageUrl,
//               width: 200.0,
//               height: 200.0,
//               fit: BoxFit.cover,
//             ),
//             SizedBox(height: 20.0),
//             Text(
//               item.title,
//               style: TextStyle(
//                 fontSize: 20.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 10.0),
//             Text(
//               item.description,
//               style: TextStyle(fontSize: 16.0),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
