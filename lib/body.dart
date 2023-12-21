
import 'package:flutter/material.dart';
import '/people.dart';
import 'detail.dart';

class Body extends StatelessWidget {
  List<People> people = People.generate();

  Body({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: people.length,
        itemBuilder: (context,index){
          return ListTile(
            leading: CircleAvatar(backgroundImage: NetworkImage(people[index].photo)),
            title: Text(people[index].name),
            subtitle: Text(people[index].email),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                    return Detail(people[index]);
              }));
            },
          );
        });
  }
}
