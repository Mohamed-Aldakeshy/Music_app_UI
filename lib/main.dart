import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MusicApp());
}

class MusicApp extends StatelessWidget {
  const MusicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/music_background_1.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                CustomAppBar(),
                SizedBox(height: MediaQuery.of(context).size.height * 0.06),
                Text(
                  'The Music of\n   our People',
                  style: TextStyle(
                    color: Color(0xffFFAFF7),
                    fontFamily: 'FleurDeLeah',
                    fontSize: 64,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 103),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text:
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut laboreUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo con',
                          style: TextStyle(
                            color: Color(0xffFFAFF7),
                            fontSize: 18,
                          ),
                        ),
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () async {},
                          text: ' [Link]',
                          style: TextStyle(
                            color: Color(0xff00B3FF),
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.14,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomRightButton(),
                    SizedBox(
                      width: 15,
                    ),
                    CustomLeftButton(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomSvgPic(svgPic: 'assets/music_app_logo.svg'),
          Row(
            children: [
              CustomSvgPic(svgPic: 'assets/user.svg'),
              SizedBox(
                width: 16,
              ),
              CustomSvgPic(svgPic: 'assets/home.svg'),
              SizedBox(
                width: 16,
              ),
              CustomSvgPic(svgPic: 'assets/edit.svg'),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomSvgPic extends StatelessWidget {
  const CustomSvgPic({super.key, required this.svgPic});
  final String svgPic;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(svgPic);
  }
}

class CustomRightButton extends StatelessWidget {
  const CustomRightButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 168,
      height: 54,
      decoration: BoxDecoration(
        color: Color(0xffFFAFF7),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Text(
          'BUY NOW',
          style: TextStyle(
            fontSize: 21,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class CustomLeftButton extends StatelessWidget {
  const CustomLeftButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 168,
      height: 54,
      decoration: BoxDecoration(
        border: Border.all(
          width: 4,
          color: Color(0xffFFAFF7),
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Text(
          'Learn more',
          style: TextStyle(
            fontSize: 21,
            color: Color(0xffFFAFF7),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
