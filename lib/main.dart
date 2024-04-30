import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
      home: Scaffold(
    body: BodyContent(),
  )));
}

class BodyContent extends StatelessWidget {
  const BodyContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(
            height: 200,
            child: Center(
              child: Text(
                'Truth Me',
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Wrap(
                direction: Axis.horizontal,
                runSpacing: 10,
                children: [
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.amberAccent,
                      ),
                      child: const Text(
                        '성격 검사',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      onPressed: () {
                        // 버튼 클릭 시 실행될 동작
                      },
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.amberAccent,
                      ),
                      child: const Text(
                        '동행자',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      onPressed: () {
                        // 버튼 클릭 시 실행될 동작
                      },
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.amberAccent,
                      ),
                      child: const Text(
                        '마음 알기',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      onPressed: () {
                        // 버튼 클릭 시 실행될 동작
                      },
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.amberAccent,
                      ),
                      child: const Text(
                        '나의 정보',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      onPressed: () {
                        // 버튼 클릭 시 실행될 동작
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.deepOrange,
            child: Wrap(
              alignment: WrapAlignment.center,
              direction: Axis.horizontal,
              spacing: 10,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    foregroundColor: Colors.amberAccent,
                  ),
                  child: const Text(
                    '로그인',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                  onPressed: () {
                    // 버튼 클릭 시 실행될 동작
                  },
                ),
                const Text(
                  '|',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    foregroundColor: Colors.amberAccent,
                  ),
                  child: const Text(
                    '회원 가입',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                  onPressed: () {
                    // 버튼 클릭 시 실행될 동작
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
