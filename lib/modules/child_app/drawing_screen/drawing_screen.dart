import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project/constants/constants.dart';

import '../../../components/custom_color.dart';

class DrawingScreen extends StatefulWidget {
  const DrawingScreen({Key? key}) : super(key: key);

  @override
  State<DrawingScreen> createState() => _DrawingScreenState();
}

class _DrawingScreenState extends State<DrawingScreen> {
  @override
  initState() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    super.initState();
  }

  List<Offset> points = [];
  List<Color> colors = [
    Colors.redAccent[400],
    Colors.blueAccent,
    Colors.deepOrange,
    Colors.purple,
    Colors.greenAccent[400],
  ].cast();

  PageController controller = PageController();

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    SystemChrome.restoreSystemUIOverlays();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Colors.white,
                    CustomColor.blue11.withOpacity(.9),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: const [0.0, 1.0],
                  tileMode: TileMode.clamp),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: InkWell(
              onTap: () {
                if (points.isNotEmpty) {
                  controller.previousPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut);
                }
              },
              child: const CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 30,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: InkWell(
              onTap: () {
                if (points.isNotEmpty) {
                  controller.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut);
                }
              },
              child: const CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 30,
                ),
              ),
            ),
          ),
          Center(
            child: SizedBox(
                width: width * .9,
                height: height * .9,
                child: PageView.builder(
                  controller: controller,
                  onPageChanged: (value) {
                    setState(() {
                      points.clear();
                    });
                  },
                  itemBuilder: (context, index) => Image.asset(
                    drawingExcercise[index],
                    width: width * .9,
                    height: height * .9,
                    fit: BoxFit.fill,
                  ),
                  itemCount: 9,
                )),
          ),
          Center(
            child: Container(
              width: width * .7,
              height: height * .7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: GestureDetector(
                onPanDown: (details) {
                  setState(() {
                    points.add(details.localPosition);
                    painter.color = colors[Random().nextInt(5)];
                  });
                },
                onPanUpdate: (details) {
                  setState(() {
                    points.add(details.localPosition);
                  });
                },
                onPanEnd: (details) {
                  setState(() {
                    points.add(Offset.zero);
                  });
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: CustomPaint(
                    painter: MyCustomPainter(points: points),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Paint painter = Paint();

class MyCustomPainter extends CustomPainter {
  List<Offset> points;

  MyCustomPainter({
    required this.points,
  });
  @override
  void paint(Canvas canvas, Size size) {
    Paint background = Paint()..color = Colors.transparent;
    Rect rect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawRect(rect, background);

    painter.strokeWidth = 20;
    painter.isAntiAlias = true;
    painter.strokeCap = StrokeCap.round;

    for (var i = 0; i < points.length - 1; i++) {
      if (points[i] != Offset.zero && points[i + 1] != Offset.zero) {
        canvas.drawLine(points[i], points[i + 1], painter);
      } else if (points[i] != Offset.zero && points[i + 1] == Offset.zero) {
        canvas.drawPoints(PointMode.points, points.cast(), painter);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
