import 'package:flutter/material.dart';

class Routes extends StatefulWidget {
  const Routes({Key? key}) : super(key: key);

  @override
  State<Routes> createState() => _RoutesState();
}

class _RoutesState extends State<Routes> {
  List items = [
    "sea1",
    "sea2",
    "sea3",
  ];
  List subitems=["ocean sea for sea1","ocean sea for sea2","ocean sea for sea3",];
  List images = ["images/seas.jpg", "images/seas.jpg", "images/seas.jpg"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Un Named Routes",
            style: TextStyle(color: Colors.blue),
          ),
        ),
        body: ListView.builder(
        shrinkWrap: true,
    itemCount: items.length,
    itemBuilder: (BuildContext context,int intex) {
          return Container(
            child: ListTile(
              leading:  CircleAvatar(
                radius: 20,
                backgroundImage:AssetImage(images[intex],),
                ),
              title: Text(items [intex]),
              subtitle: Text(subitems[intex]),
            ),
          );
    }

    ),
                ),
    );
  }
}
