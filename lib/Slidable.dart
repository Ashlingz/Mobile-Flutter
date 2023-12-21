import 'package:flutter/material.dart';
import 'people.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:toast/toast.dart';

class Detail4 extends StatefulWidget {
  const Detail4({super.key});

  @override
  State<Detail4> createState() => _Detail4State();
}

class _Detail4State extends State<Detail4> {
  var name = ['Airana Potifa', 'Lucy Heartfilia', 'Scarlet Crimson', 'Emma Frost', 'Brian Bryous'];
  var ls = People.generate();

  @override
  Widget build(BuildContext context) {
    return ReorderableListView.builder(
      itemBuilder: _itemBuilder,
      itemCount: ls.length,
      onReorder: _onRecorder,
    );
  }

  Widget _itemBuilder(BuildContext context, int index) {
    return Slidable(
      key: ValueKey(ls[index].id),
      actionPane: const SlidableDrawerActionPane(),
      secondaryActions: [
        IconSlideAction(
          color: Colors.blue,
          caption: 'Edit',
          iconWidget: const Icon(Icons.edit,color: Colors.white),

          onTap: _onTapEdit,
          closeOnTap: false,
        ),
        IconSlideAction(
          color: Colors.redAccent,
          caption: 'Delete',
          iconWidget: const Icon(Icons.delete,color: Colors.white),

          onTap: ()=> _onTapDelete(index),
        )
      ],
      dismissal: SlidableDismissal(
        child: SlidableDrawerDismissal(),
        onDismissed: (actionType){
          setState(() {
            ls.removeAt(index);
          });
        },
      ),
      child: ListTile(

        leading: CircleAvatar(backgroundImage: NetworkImage(ls[index].photo),),
        title: Text(ls[index].name),
        subtitle: Text(ls[index].email),

      ),
    );
  }

  void _onRecorder(int oldIndex, int newIndex) {
    setState(() {
      var item = ls.removeAt(oldIndex);
      if(newIndex>oldIndex) newIndex--;
      ls.insert(newIndex, item);
    });
  }

  _onTapEdit() {
      Toast.show('Edited');
  }

  _onTapDelete(int index) {
    setState(() {
      ls.removeAt(index);
    });
  }

}
