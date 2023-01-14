// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( //Scaffold ตัวกำหนดที่ทำให้มีโครงของหน้าจอ
      appBar: AppBar( //ชื่อพารามเตอร์แต่เป็นเนมพารามิเตอร์ คือส่งค่าแบบชื่อ:value
        title: Row( //เอาวิเจตภายใต้มันเรียงจากซ้ายไปขวา
          children: [ //จะเอาอะไรใส่ไปใน Row ก็ต้องเอา ไปไว้ใน children ของ Row อีกที
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.accessibility,
                color: Theme.of(context).primaryColor,
              ),
            ),
            SizedBox(width: 10),
            Text('GUESS THE NUMBER'),
          ],
        ),
      ),
      body: Padding( //เพิ่มพื้นที่ให้รอบๆวิเจต
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 60.0),
              child: Text(
                'Please guess the number between 1 and 100',
                style: TextStyle(
                  fontSize: 25,
                  color: Theme.of(context).primaryColor,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter your guess',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: OutlinedButton(
                onPressed: () {
                  //todo:
                },
                child: Text('GUESS'),
              ),
            )
          ],
        ),
      ),
    );
  }
}