import 'package:flutter/material.dart';

import 'designSystem/truth_menu_button.dart';
import 'designSystem/truth_text_button.dart';

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
                    child: const TruthMenuButton(buttonText: '성격 검사'),
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    child: const TruthMenuButton(buttonText: '마음 알기'),
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    child: const TruthMenuButton(buttonText: '동행자'),
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    child: const TruthMenuButton(buttonText: '나의 정보'),
                  ),
                ],
              ),
            ),
          ),
          IntrinsicHeight(
            child: Container(
              margin: const EdgeInsets.only(bottom: 15),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TruthTextButton(buttonText: '로그인'),
                  VerticalDivider(
                    width: 20,
                    thickness: 1,
                    indent: 8,
                    endIndent: 8,
                    color: Colors.black,
                  ),
                  TruthTextButton(buttonText: '회원 가입'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
