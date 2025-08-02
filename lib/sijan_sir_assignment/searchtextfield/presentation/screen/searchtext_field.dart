import 'package:flutter/material.dart';

class SearchtextField extends StatelessWidget {
  const SearchtextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SearchTextield Screen')),
      body: Card(
        color: Colors.blueGrey,
        shape: RoundedRectangleBorder(side: BorderSide.none),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SearchtextField(key: GlobalKey(debugLabel: 'Search here')),
            TextField(
              controller: SearchController(hin),
              decoration: InputDecoration(fillColor: Colors.brown),
              textCapitalization: TextCapitalization.words,
            ),
          ],
        ),
      ),
    );
  }
}
