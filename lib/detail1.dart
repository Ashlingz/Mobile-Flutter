import 'package:flutter/material.dart';
class Detail1 extends StatefulWidget{
  const Detail1({super.key});

  @override
  State<Detail1> createState() =>_Detail1Stat();
}

class _Detail1Stat extends State<Detail1>{
  var txt = TextEditingController();
  List<String> ls = [];
  @override
  Widget build(BuildContext context){
    //this function is use for ScrollBar
    return SingleChildScrollView(
      child: Column(
       children: [
         TextField(
           controller: txt,
         ),
         TextButton(
             onPressed: (){
               // setState use to reload data
               setState(() {
                 ls.add(txt.text);
                 txt.clear();
               });
             },
             child: Text('Add', style: TextStyle(color: Colors.white),),
             style: const ButtonStyle(
               backgroundColor: MaterialStatePropertyAll(Colors.pink),
             )
         ),
         SizedBox(
           height: 650 ,
           child: ListView.builder(
               itemCount: ls.length,
               itemBuilder: (context, index) {

             return ListTile(
               title: Text(ls[index])
             );
           }
           )
         )
       ],
      ),
    );
  }
}