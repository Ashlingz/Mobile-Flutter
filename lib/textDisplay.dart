import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() =>_MyAppStat();
}

class _MyAppStat extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.pink),
      home: Scaffold(
          appBar: AppBar(
            title: const Text('កម្មវិធីខ្មែរ'),
          ),
          body: Column(
            children: [
              Expanded(child: Container()),
              const Text(
                'ក្រមារខ្មែរ',
                style: TextStyle(
                    fontSize: 90,
                    fontFamily: 'ASVADEK CELLO',
                    color: Colors.pink),
              ),
              const Image(
                  width: 500,
                  height: 200,
                  image: NetworkImage(
                      'https://gogocambodia.asia/wp-content/themes/kroma/assets/images/kroma.png')),
              Expanded(child: Container()),
              Container(
                height: 50,
                color: Colors.pink,
              )
            ],
          )),
    );
  }
}

