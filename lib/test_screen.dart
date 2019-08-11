// import 'package:flutter/material.dart';
// import 'package:udacity_first_project/Category_tile.dart';
// import 'package:udacity_first_project/Unit.dart';

// class TestScreenRoute extends StatelessWidget {
//   static const _categoryNames = <String>[
//     'Length',
//     'Area',
//     'Volume',
//     'Mass',
//     'Time',
//     'Digital Storage',
//     'Energy',
//     'Currency',
//   ];

//   static const _baseColors = <Color>[
//     Colors.teal,
//     Colors.orange,
//     Colors.pinkAccent,
//     Colors.blueAccent,
//     Colors.yellow,
//     Colors.greenAccent,
//     Colors.purpleAccent,
//     Colors.red,
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _buildScreenBody(),
//     );
//   }

//   Widget _buildScreenBody() {
//     return Column(
//       children: <Widget>[
//         Expanded(
//           child: NestedScrollView(
//             headerSliverBuilder:
//                 (BuildContext context, bool innerBoxIsScrolled) {
//               return <Widget>[
//                 SliverAppBar(
//                   backgroundColor: Colors.black,
//                   expandedHeight: 250.0,
//                   floating: false,
//                   pinned: true,
//                   flexibleSpace: FlexibleSpaceBar(
//                     centerTitle: true,
//                     title: Text(
//                       "Kate Spencer",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 16.0,
//                       ),
//                     ),
//                     background: Image.network(
//                       "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//               ];
//             },
//             body: _buildCategoryWidgets(),
//           ),
//         ),
//         Container(
//           height: 45.0,
//           decoration: BoxDecoration(color: Colors.white, boxShadow: [
//             BoxShadow(
//                 color: Colors.black38, blurRadius: 5.0, spreadRadius: 1.0),
//           ]),
//           child: Material(
//             child: InkWell(
//               splashColor: Colors.blueAccent,
//               highlightColor: Colors.blueAccent,
//               onTap: () {
//                 print("I was tapped!");
//               },
//               child: Center(child: Icon(Icons.add)),
//             ),
//           ),
//         ),
//       ],
//     );
//   }


// List<Unit> _retrieveUnitList(String categoryName) {
//     return List.generate(10, (int i) {
//       i += 1;
//       return Unit(
//         name: '$categoryName Unit $i',
//         conversion: i.toDouble(),
//       );
//     });
//   }
//   Widget _buildCategoryWidgets() {
//     var _categories = <Category_tile>[];

//     for (var i = 0; i < _categoryNames.length; i++) {
//       var category = Category_tile(
//           name: _categoryNames[i],
//           color: _baseColors[i],
//           iconLocation: Icons.cake,
//           units: _retrieveUnitList(_categoryNames[i]));

//       _categories.add(category);
//     }

//     return ListView.builder(
//       itemBuilder: (BuildContext context, int index) => _categories[index],
//       itemCount: _categories.length,
//     );
//   }
// }
