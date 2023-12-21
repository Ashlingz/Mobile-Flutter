// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(primarySwatch: Colors.pink),
//       home: Scaffold(
//           appBar: AppBar(
//             title: const Text('កម្មវិធីខ្មែរ'),
//           ),
//           body: Column(
//             children: [
//               Expanded(child: Container()),
//               const Text(
//                 'ក្រមារខ្មែរ',
//                 style: TextStyle(
//                     fontSize: 90,
//                     fontFamily: 'ASVADEK CELLO',
//                     color: Colors.pink),
//               ),
//               const Image(
//                   width: 500,
//                   height: 200,
//                   image: NetworkImage('https://gogocambodia.asia/wp-content/themes/kroma/assets/images/kroma.png')),
//               Expanded(child: Container()),
//               Container(
//                 height: 50,
//                 color: Colors.pink,
//               )
//             ],
//           )),
//     );
//
//   }
// }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: (false),
//       home: Home(),
//     );
//   }
// }
// class Home extends StatelessWidget {
//   const Home({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('My App')),
//       body: const Body(),
//       bottomNavigationBar: BottomNavigationBar(items: const [
//         BottomNavigationBarItem(icon: Icon(Icons.home),label:'Home'),
//         BottomNavigationBarItem(icon: Icon(Icons.search),label:'Search'),
//         BottomNavigationBarItem(icon: Icon(Icons.business),label:'Others'),
//       ],
//       onTap:(index){
//         if(index ==0){
//           gotoDetail(context, 'Home');
//         }else if(index == 1){
//           gotoDetail(context, 'Search');
//         }else if(index == 2){
//           gotoDetail(context, 'Others');
//         }
//       },
//       ),
//     );
//   }
// }
//
// void gotoDetail(BuildContext context, String text) {
//   Navigator.push(context, MaterialPageRoute(builder: (context){
//     return Detail(text: text);
//
//   }));
// }
//
//
// class Body extends StatelessWidget {
//   const Body({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: [
//         ListTile(
//           leading: const Icon(Icons.home),
//           title: const Text('Home'),
//           subtitle: const Text('Phnom Penh'),
//           onTap: (){
//             gotoDetail(context, 'Home');
//           },
//         ),
//         ListTile(
//           leading: const Icon(Icons.business),
//           title: const Text('Office'),
//           subtitle: const Text('Phnom Penh'),
//           onTap: (){
//             gotoDetail(context, 'Office');
//           },
//         ),
//         ListTile(
//           leading: const Icon(Icons.school),
//           title: const Text('School'),
//           subtitle: const Text('Phnom Penh'),
//           onTap: (){
//             gotoDetail(context, 'School');
//           },
//         ),
//       ],
//     );
//   }
//
//   void gotoDetail(BuildContext context, String text) {
//     Navigator.push(context, MaterialPageRoute(builder: (context){
//       return Detail(text: text);
//
//     }));
//   }
// }
//   class Detail extends StatelessWidget {
//   final String text;
//
//   const Detail({super.key, required this.text});
//
//     @override
//     Widget build(BuildContext context) {
//       return Scaffold(
//         appBar: AppBar(title: Text(text))
//
//       );8/
//     }
// }


import 'package:flutter/material.dart';

import 'body.dart';
import 'detail1.dart';
import 'Detail2.dart';
import 'Detail3.dart';
import 'Slidable.dart';
import 'btnDetail.dart';
import 'textDisplay.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My App')),
      // body: const Body(),
      body: ListView(
        children: <Widget>[

          // ListTile(
          //   title: Text('TextDisplay'),
          //   onTap: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(builder: (context) => textDisplay()),
          //     );
          //   },
          // ),
          //
          // ListTile(
          //   title: Text('Button'),
          //   onTap: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(builder: (context) => buttonDetail()),
          //     );
          //   },
          // ),

          ListTile(
            title: Text('TextDrop'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TextDrop()),
              );
            },
          ),
          ListTile(
            title: Text('SumValue'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SumValue()),
              );
            },
          ),
          ListTile(
            title: Text('Reorder'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Reorder()),
              );
            },
          ),

          ListTile(
            title: Text('Slidable'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Slidable()),
              );
            },
          ),

        ],
      ),





    );
  }
}

class TextDrop extends StatelessWidget {
  const TextDrop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Drop'),
      ),
       body: Detail1(),
    );
  }
}

class SumValue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SumValue'),
      ),
      body: Detail2(),
    );
  }
}

class Reorder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reorder'),
      ),
      body: Detail3(),
    );
  }
}

class Slidable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slidable'),
      ),
      body: Detail4(),
    );
  }
}

class textDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('textDisplay'),
      ),
      body: MyApp(),
    );
  }
}

class buttonDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button to Detail'),
      ),
      body: Homie(),
    );
  }
}

