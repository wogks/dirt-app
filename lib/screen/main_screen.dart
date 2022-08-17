import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '현재 위치 미세 먼지',
              style: TextStyle(fontSize: 30),
            ),
            Card(
              child: Column(
                children: [
                  Container(
                    color: Colors.yellow,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('얼굴사진'),
                        Text(
                          '80',
                          style: TextStyle(fontSize: 40),
                        ),
                        Text(
                          '보통',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Text('이미지'),
                          SizedBox(
                            width: 16,
                          ),
                          Text('11도'),
                        ],
                      ),
                      Text('습도 100%'),
                      Text('풍속 5.7m/s')
                    ],
                  ),
                ],
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.orange),
              onPressed: () {},
              child: const Icon(
                Icons.refresh,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
