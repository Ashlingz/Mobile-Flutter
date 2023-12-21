import "package:flutter/material.dart";

class Detail3 extends StatefulWidget {
  const Detail3({super.key});

  @override
  State<Detail3> createState() => _Detail3State();
}

class _Detail3State extends State<Detail3> {
  var list = ['Airana Potifa', 'Lucy Heartfilia', 'Scarlet Crimson', 'Emma Frost', 'Brian Bryous'];
  @override
  Widget build(BuildContext context) {
    return ReorderableListView.builder(
      itemBuilder: _itemBuilder,
      itemCount: list.length,
      onReorder: _onReorder,
    );
  }

  Widget _itemBuilder(BuildContext context, int index) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      elevation: 5,
      color: index % 2 == 0 ? Colors.white70 : Colors.white,
      shadowColor: Colors.blueAccent,
      key: ValueKey(index),
      child: ListTile(
          title: Text(
            list[index],
          ),
          leading: CircleAvatar(child: Icon(Icons.message)),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                  onPressed: () => _editItem(index),
                  icon: const Icon(
                    Icons.edit,
                    color: Colors.red,
                  )),
              IconButton(
                  onPressed: () => _deleteItem(index),
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.red,
                  )),
            ],
          )),
    );
  }

  void _onReorder(int oldIndex, int newIndex) {
    setState(() {
      var item = list.removeAt(oldIndex);
      if (newIndex > oldIndex) newIndex--;
      list.insert(newIndex, item);
    });
  }

  _deleteItem(int index) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Warning!'),
          content: Text('Are you sure you want to delete?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('No'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  list.removeAt(index);
                  Navigator.of(context).pop();
                });
              },
              child: Text('Yes'),
            ),
          ],
        );
      },
    );
  }

  _editItem(int index) {
    var item = list[index];
    final updateItem = TextEditingController(text: "$item");
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Edit $item'),
          content: TextFormField(
            controller: updateItem,
            onFieldSubmitted: (value) {
              setState(() {
                list[index] = value;
                Navigator.of(context).pop();
              });
            },
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  list[index] = updateItem.text;
                  Navigator.of(context).pop();
                });
              },
              child: Text('Save'),
            ),
          ],
        );
      },
    );
  }
}
