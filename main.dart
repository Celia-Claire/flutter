import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  get mainAxisSize => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'carrot',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 115, 220, 228),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(Icons.menu),
              Text('MalBob Market'),
              Icon(Icons.people),   
            ],
          ),
        ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                ItemData(price: 1000),
                ItemData(price: 9999),
                ItemData(price: 8888),
                ItemData(price: 5689),
              ],
            ),
          )
      ),
    );
  }
}

class ItemData extends StatelessWidget {
  int price;

  ItemData({
    super.key,
    required this.price
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Image(
          width: 100,
          height: 100,
          image: AssetImage('images/coca.jpg'),
        ),
        const SizedBox(width: 50,),
          Flexible(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
               const Text('시원한 콜라 팝니다.',
               style:TextStyle(fontWeight: FontWeight.bold, fontSize: 16)
               ),
          
               const Text('경기도 성남시',
               style:TextStyle(color: Colors.black54)
               ),
          
               Text('$price원'),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                  Icon(Icons.favorite_border, color: Colors.red),
                  Text('10'),
                  SizedBox(width: 20,)
                ],)
              ],
            ),
          )
      ],
    );
  }
}