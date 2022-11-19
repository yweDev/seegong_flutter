import 'package:flutter/material.dart';
import 'package:seegong_flutter/screens/Reservation.dart';
import 'package:seegong_flutter/screens/ReservationResult.dart';
import 'package:seegong_flutter/screens/SpaceListScreen.dart';
import 'SpaceSelect.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/glob_top_img_none.png',
                    ),
                    const Text(
                      "공유 플랫폼 시소",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    const Text(
                      "당신과 시흥을 잇습니다",
                      style: TextStyle(fontSize: 25),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 250),
                      child:
                      const Text(
                        "로그인하여 시작하세요",
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                      // TODO Add Google login button
                      // TODO Follow Google's design guide
                    ),
                    ElevatedButton(
                      child: const Text('Google Login Button'),
                      onPressed: () {
                        // Navigator.pushNamed(context, ResultScreen.routename);

                        // Todo: 결과화면 제작 완료시 밑의 네비게이터로 전환
                        Navigator.pushNamed(context, SpaceSelect.routename);
                      },
                    ),
                  ],
                )
              ],
            )
        ),
      ),
    );
  }
}