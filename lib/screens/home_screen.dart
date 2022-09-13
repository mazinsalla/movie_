import 'package:flutter/material.dart';
import 'package:untitled1/data/data_list.dart';
import 'package:untitled1/screens/detail%20screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Trending',
                  style: TextStyle(fontSize: 20, color: Colors.red),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "see all",
                      style: TextStyle(fontSize: 20, color: Colors.blueAccent),
                    ))
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imageMovie.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> DetailScreen(
                      title: titleMovie[index],
                      imageUrl:imageMovie[index],
                      descrition:descriptionMovie[index],

                    )));

                  },
                  child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9),
                    ),
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                         ClipRRect(
                          borderRadius: BorderRadius.circular(9),
                          child: Image.network(
                              imageMovie[index]),
                        ),
                        Text(
                          titleMovie[index],
                          style: TextStyle(fontSize: 15, color: Colors.red),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
