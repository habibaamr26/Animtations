import 'package:flutter/material.dart';

import '../widgets/elevated_button.dart';

class CostumeAnimatedList extends StatefulWidget {
  const CostumeAnimatedList({super.key});

  @override
  State<CostumeAnimatedList> createState() => _CostumeAnimatedListState();
}

class _CostumeAnimatedListState extends State<CostumeAnimatedList> {
  int counter = 0;

  final List<int> items = [];

  GlobalKey<AnimatedListState> key=GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        title: Text(
          "Animated List",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: AnimatedList(
                key: key,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index, animation) {
                  return SizeTransition(
                    sizeFactor: animation,
                    child: itemBuild(index: index),
                  );
                },
              ),
            ),

            CostumeElevatedButton(
              onPressed: () {
                items.insert(items.length, items.length);
                key.currentState!.insertItem(items.length-1,duration: Duration(milliseconds: 500));
                setState(() {});
              },
              label: 'insert Item',
            ),
          ],
        ),
      ),
    );
  }

  Widget itemBuild({required int index}) {
    print(index);
    return Card(
      elevation: 2,
      child: ListTile(
        leading: Text("New Item $index"),
        trailing: IconButton(onPressed: () {
          final removedItem = items[index];
          items.removeAt(index);
          key.currentState!.removeItem(index, duration: Duration(milliseconds: 500),(context,animation){
            return FadeTransition(opacity: animation,
                child: Card(
                  elevation: 2,
                  child: ListTile(
                    leading: Text("New Item $removedItem"),
                  )
                )
                );
          });
        }, icon: Icon(Icons.delete)),
      ),
    );
  }
}
