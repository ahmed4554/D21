import 'package:flutter/material.dart';
import 'package:project/components/custom_color.dart';
import 'package:project/modules/child_app/content_screens/alphabet/alphabet_screen.dart';
import 'package:project/modules/child_app/content_screens/numbers/numbers_screen.dart';
import 'package:project/modules/child_app/content_screens/shapes/shapes_screen.dart';
import 'package:project/modules/child_app/drawing_screen/drawing_screen.dart';
import 'package:project/modules/child_app/levels_screen/levels_screen.dart';

class LevelOneScreen extends StatelessWidget {
  const LevelOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * .6,
            // height: 350.0,
            decoration: BoxDecoration(
              // color: CustomColor.blue11.withOpacity(.8),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  CustomColor.blue11.withOpacity(.8),
                  Colors.white,
                ],
                stops: const [.4, .6],
                tileMode: TileMode.clamp,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 45.0,
              left: 20.0,
              right: 20.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop(
                          MaterialPageRoute(builder: (context) {
                            return const LevelsScreen();
                          }),
                        );
                      },
                      child: const Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 120.0,
                    ),
                    const Text(
                      'Level 1',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 26.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 120.0,
                      height: 40.0,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.white,
                            spreadRadius: 0,
                            blurRadius: 10,
                            offset: Offset.zero,
                          )
                        ],
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: const Text(
                        'Let\'s Study',
                        style: TextStyle(
                            fontSize: 26.0, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Container(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      width: 102.0,
                      height: 102.0,
                      margin: const EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(boxShadow: const [
                        BoxShadow(
                          color: Colors.white,
                          spreadRadius: 1,
                          blurRadius: 10,
                          offset: Offset.zero,
                        )
                      ], borderRadius: BorderRadius.circular(50.0)),
                      child: Image.asset(
                        "assets/images/profile/eliza.png",
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 55.0,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) {
                            return const AlphabetScreen();
                          }),
                        );
                      },
                      child: Stack(
                        children: [
                          Container(
                            height: 200.0,
                            width: 165.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 4,
                                  blurRadius: 7,
                                  offset: const Offset(
                                      1.5, 2), // changes position of shadow
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 10.0,
                              left: 29.0,
                            ),
                            child: Container(
                              height: 106.0,
                              width: 106.0,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(55.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 9,
                                    offset: const Offset(
                                        .5, .5), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Image.asset(
                                'assets/images/child_app/level_one/abc.png',
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                              top: 123.0,
                              left: 55.0,
                            ),
                            child: Text(
                              'Alphabet',
                              style: TextStyle(
                                color: CustomColor.sky1,
                                fontWeight: FontWeight.w600,
                                fontSize: 17.0,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                              top: 143.0,
                              left: 55.0,
                            ),
                            child: Text(
                              '20 / 26',
                              style: TextStyle(
                                color: CustomColor.sky1,
                                fontWeight: FontWeight.w600,
                                fontSize: 22.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 172.0,
                              left: 12.0,
                            ),
                            child: SizedBox(
                              width: 140.0,
                              child: LinearProgressIndicator(
                                minHeight: 5.0,
                                color: Colors.orange.shade500.withOpacity(.9),
                                backgroundColor: Colors.grey.shade400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 16.0,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) {
                            return const NumbersScreen();
                          }),
                        );
                      },
                      child: Stack(
                        children: [
                          Container(
                            height: 200.0,
                            width: 165.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 4,
                                  blurRadius: 7,
                                  offset: const Offset(
                                      1.5, 2), // changes position of shadow
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 10.0,
                              left: 29.0,
                            ),
                            child: Container(
                              height: 106.0,
                              width: 106.0,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(55.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 9,
                                    offset: const Offset(
                                        .5, .5), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Image.asset(
                                'assets/images/child_app/level_one/numbers.png',
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                              top: 123.0,
                              left: 55.0,
                            ),
                            child: Text(
                              'Numbers',
                              style: TextStyle(
                                color: CustomColor.sky1,
                                fontWeight: FontWeight.w600,
                                fontSize: 17.0,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                              top: 143.0,
                              left: 59.0,
                            ),
                            child: Text(
                              '1 / 12',
                              style: TextStyle(
                                color: CustomColor.sky1,
                                fontWeight: FontWeight.w600,
                                fontSize: 22.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 172.0,
                              left: 12.0,
                            ),
                            child: SizedBox(
                              width: 140.0,
                              child: LinearProgressIndicator(
                                minHeight: 5.0,
                                color: Colors.red.shade600.withOpacity(.9),
                                backgroundColor: Colors.grey.shade400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const ShapesScreen()),
                        );
                      },
                      child: Stack(
                        children: [
                          Container(
                            height: 200.0,
                            width: 165.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 4,
                                  blurRadius: 7,
                                  offset: const Offset(
                                      1.5, 2), // changes position of shadow
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 10.0,
                              left: 29.0,
                            ),
                            child: Container(
                              height: 106.0,
                              width: 106.0,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(55.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 9,
                                    offset: const Offset(
                                        .5, .5), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Image.asset(
                                'assets/images/child_app/level_one/shapes.png',
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                              top: 123.0,
                              left: 55.0,
                            ),
                            child: Text(
                              'Shapes',
                              style: TextStyle(
                                color: CustomColor.sky1,
                                fontWeight: FontWeight.w600,
                                fontSize: 17.0,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                              top: 143.0,
                              left: 55.0,
                            ),
                            child: Text(
                              '7 / 10',
                              style: TextStyle(
                                color: CustomColor.sky1,
                                fontWeight: FontWeight.w600,
                                fontSize: 22.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 172.0,
                              left: 12.0,
                            ),
                            child: SizedBox(
                              width: 140.0,
                              child: LinearProgressIndicator(
                                minHeight: 5.0,
                                color: Colors.blue.shade600.withOpacity(.9),
                                backgroundColor: Colors.grey.shade400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 16.0,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DrawingScreen(),
                          ),
                        );
                      },
                      child: Stack(
                        children: [
                          Container(
                            height: 200.0,
                            width: 165.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 4,
                                  blurRadius: 7,
                                  offset: const Offset(
                                      1.5, 2), // changes position of shadow
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 10.0,
                              left: 29.0,
                            ),
                            child: Container(
                              height: 106.0,
                              width: 106.0,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(55.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 9,
                                    offset: const Offset(
                                        .5, .5), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Image.asset(
                                'assets/images/child_app/level_one/palette.png',
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                              top: 123.0,
                              left: 55.0,
                            ),
                            child: Text(
                              'Drawing',
                              style: TextStyle(
                                color: CustomColor.sky1,
                                fontWeight: FontWeight.w600,
                                fontSize: 17.0,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                              top: 143.0,
                              left: 61.0,
                            ),
                            child: Text(
                              '1 / 5',
                              style: TextStyle(
                                color: CustomColor.sky1,
                                fontWeight: FontWeight.w600,
                                fontSize: 22.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 172.0,
                              left: 12.0,
                            ),
                            child: SizedBox(
                              width: 140.0,
                              child: LinearProgressIndicator(
                                minHeight: 5.0,
                                color: Colors.green.shade500.withOpacity(.9),
                                backgroundColor: Colors.grey.shade400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
