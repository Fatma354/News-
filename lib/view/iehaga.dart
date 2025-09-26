/*import 'package:first/widget/News1.dart';
import 'package:flutter/material.dart';

class Newslist extends StatelessWidget {
  const Newslist({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(7),
          child: ListView.builder(
              //    shrinkWrap: true,
              physics: AlwaysScrollableScrollPhysics(),
              itemCount: 10, // عدد العناصر
              itemBuilder: (context, index) {
                return News1();
              }),
        ),
      ),
    );
  }
}*/
/*import 'package:flutter/material.dart';
import 'package:first/widget/category_card.dart';
import 'package:first/model/model.dart';

class Homelistview extends StatelessWidget {
  const Homelistview({super.key});
  final List<ModelItem> model = const [
    ModelItem(image: 'assets/image/technology.jpeg', name: 'Busnis'),
    ModelItem(image: 'assets/image/business.avif', name: 'Busnis'),
    ModelItem(image: 'assets/image/entertaiment.avif', name: 'Busnis'),
    ModelItem(image: 'assets/image/technology.jpeg', name: 'Busnis'),
    ModelItem(image: 'assets/image/business.avif', name: 'Busnis'),
    ModelItem(image: 'assets/image/sports.avif', name: 'Busnis'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        //  shrinkWrap: true,
        physics: AlwaysScrollableScrollPhysics(),
        itemCount: model.length,
        itemBuilder: (context, index) {
          return Category(
            items: model[index],
          );
        });
  }
}*/
/*import 'package:flutter/material.dart';
import 'package:first/widget/category_card.dart';

class ModelItem {
  final String image;
  final String name;
  const ModelItem({required this.image, required this.name});
}*/
/*class Category extends StatelessWidget {
  Category({super.key, required this.items});

  ModelItem items;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4),
      child: Container(
        height: 70,
        width: 160,
        decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(items.image), fit: BoxFit.fill),
          borderRadius: BorderRadius.circular(17),
        ),
        child: Center(
          child: Text(
            items.name,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
*/
/*class News1 extends StatelessWidget {
  const News1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          'https://images.unsplash.com/photo-1747886084464-d07c4d90fd8d?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8SW1hZ2VzJTIwZm9yJTIwYSUyME5ld3MlMjBhbmQlMjBKb3VybmFsaXNtJTIwV2Vic2l0ZXxlbnwwfHwwfHx8MA%3D%3D',
          height: 240,
          width: 395,
          fit: BoxFit.cover,
        ),
      ),
      SizedBox(
        height: 5,
      ),
      Text(
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        'Stay updated with the latest news from around the world.Get instant access to breaking stories and in-depth reports.Follow politics, business, technology, and sports all in one place.',
        style: TextStyle(fontSize: 20),
      ),
      SizedBox(
        height: 3,
      ),
      Text(
        'the latest news from around the world.Get instant access to breaking stories and in-depth ',
        style: TextStyle(color: Colors.grey, fontSize: 17),
      ),
      SizedBox(
        height: 12,
      ),
    ]);
  }
}*/
