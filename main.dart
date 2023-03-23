import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '타이틀',
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('press button', style: TextStyle(color : Colors.white),),
              /*컨네이너로 버튼 모양흉내내기*/
              Container(
                decoration: BoxDecoration(
                  color : Colors.amber,
                    borderRadius: BorderRadius.circular(50)
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: 20
                ),
                child: Text('button'),
              )
            ],
          ),
        ),
      ),
    );
  }
}