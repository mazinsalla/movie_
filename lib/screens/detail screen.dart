import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
String imageUrl;
String title ;
String descrition;


DetailScreen({ required this.imageUrl,  required this.title, required this.descrition});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail SCreen"),
      ),
      body: Column(children: [

        Container
          (
            height : 250,
            width: double.infinity,
            child: Image.network(imageUrl,
              fit: BoxFit.fill,
            )),
        Text("Title $title"),
        Text("Descripiyion"),
        Text(" $descrition"),



      ],
      ),
    );
  }
}