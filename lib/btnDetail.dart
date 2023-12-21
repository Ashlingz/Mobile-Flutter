import 'package:flutter/material.dart';


class Homie extends StatefulWidget {
  const Homie({super.key});

  @override
  State<Homie> createState() => _HomieStat();
}
  class _HomieStat extends State<Homie>{
    @override
    Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(title: const Text('My App')),
  body: const Body(),
  bottomNavigationBar: BottomNavigationBar(items: const [
  BottomNavigationBarItem(icon: Icon(Icons.home),label:'Home'),
  BottomNavigationBarItem(icon: Icon(Icons.search),label:'Search'),
  BottomNavigationBarItem(icon: Icon(Icons.business),label:'Others'),
  ],
  onTap:(index){
  if(index ==0){
  gotoDetail(context, 'Home');
  }else if(index == 1){
  gotoDetail(context, 'Search');
  }else if(index == 2){
  gotoDetail(context, 'Others');
  }
  },
  ),
  );
  }

  }




void gotoDetail(BuildContext context, String text) {
  Navigator.push(context, MaterialPageRoute(builder: (context){
    return Detail(text: text);

  }));
}


class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: const Icon(Icons.home),
          title: const Text('Home'),
          subtitle: const Text('Phnom Penh'),
          onTap: (){
            gotoDetail(context, 'Home');
          },
        ),
        ListTile(
          leading: const Icon(Icons.business),
          title: const Text('Office'),
          subtitle: const Text('Phnom Penh'),
          onTap: (){
            gotoDetail(context, 'Office');
          },
        ),
        ListTile(
          leading: const Icon(Icons.school),
          title: const Text('School'),
          subtitle: const Text('Phnom Penh'),
          onTap: (){
            gotoDetail(context, 'School');
          },
        ),
      ],
    );
  }

  void gotoDetail(BuildContext context, String text) {
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return Detail(text: text);

    }));
  }
}
  class Detail extends StatelessWidget {
  final String text;

  const Detail({super.key, required this.text});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text(text))

      );
    }
}