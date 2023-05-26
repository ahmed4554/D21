import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:project/components/custom_color.dart';
import 'package:project/modules/child_app/home_Screen/home_screen.dart';
import 'package:project/network/dio_helper/dio_helper.dart';
import 'package:project/utils/cubits/data_cubit/data_cubit.dart';
import 'package:project/utils/cubits/data_cubit/data_states.dart';

class ObjectDetectionScreen extends StatefulWidget {
  const ObjectDetectionScreen({Key? key}) : super(key: key);

  @override
  State<ObjectDetectionScreen> createState() => _GallatyScreenState();
}

class _GallatyScreenState extends State<ObjectDetectionScreen>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController animationController;
  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 260),
    );

    final curvedAnimation =
        CurvedAnimation(curve: Curves.easeInOut, parent: animationController);
    animation = Tween<double>(begin: 0, end: 1).animate(curvedAnimation);

    // initialize dio object
    DioHelper.initDio();
    super.initState();
  }

  List<double> boxCordinates = [];
  double width = 0;
  double height = 0;
  num classPercentage = 0;
  String className = '';
  Radius noRadius = Radius.zero;
  Radius radius = const Radius.circular(10);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop(
                MaterialPageRoute(builder: (context) {
                  return const ChildHomeScreen();
                }),
              );
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
          title: Text(
            "Object Detection",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          elevation: 0,
          backgroundColor: CustomColor.blue11,
        ),
        body: BlocConsumer<DataCubit, DataStates>(
          listener: (context, state) {},
          builder: (context, state) {
            var c = DataCubit.get(context);
            if (c.objectDetection != null) {
              boxCordinates =
                  c.objectDetection!.results![0].entities![0].objects![0].box!;
              className = c.objectDetection!.results![0].entities![0]
                  .objects![0].entities![0].classes!.keys
                  .toList()[0];
              classPercentage = (c.objectDetection!.results![0].entities![0]
                          .objects![0].entities![0].classes!.values.first *
                      100)
                  .round();
            }

            return SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'click the button below to open the camera or gallery :'
                          .toUpperCase(),
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  c.objectDetection != null
                      ? Stack(
                          children: [
                            Image(
                              width: 400,
                              height: 600,
                              image: FileImage(
                                c.image!,
                              ),
                              fit: BoxFit.fill,
                            ),
                            Positioned(
                              left: 400 * boxCordinates[0],
                              top: 600 * boxCordinates[1] - 30,
                              child: Container(
                                alignment: Alignment.center,
                                padding: const EdgeInsets.all(5),
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  borderRadius: BorderRadius.only(
                                    topLeft: radius,
                                    topRight: radius,
                                    bottomLeft: noRadius,
                                    bottomRight: noRadius,
                                  ),
                                ),
                                child: Text(
                                  '$className : $classPercentage %',
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 400 * boxCordinates[0],
                              top: 600 * boxCordinates[1],
                              child: Container(
                                width: 450 * boxCordinates[2],
                                height: 600 * boxCordinates[3],
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: noRadius,
                                    topRight: radius,
                                    bottomLeft: radius,
                                    bottomRight: radius,
                                  ),
                                  border: Border.all(
                                    color: Colors.yellow,
                                    width: 3.5,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      : Lottie.asset(
                          'assets/lotties/object_detection.json',
                        ),
                ],
              ),
            );
          },
        ),
        //Init Floating Action Bubble
        floatingActionButton: FloatingActionBubble(
          // Menu items
          items: <Bubble>[
            // Floating action menu item
            Bubble(
              title: "Camera",
              iconColor: Colors.white,
              bubbleColor: CustomColor.blue11,
              icon: Icons.camera_alt,
              titleStyle: const TextStyle(
                fontSize: 16.0,
                color: Colors.white,
              ),
              onPress: DataCubit.get(context).uploadImage,
            ),
            // Floating action menu item
            Bubble(
                title: "Gallery",
                iconColor: Colors.white,
                bubbleColor: CustomColor.blue11,
                icon: Icons.photo_album,
                titleStyle: const TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                ),
                onPress: DataCubit.get(context).uploadGImage),
          ],

          // animation controller
          animation: animation,

          // On pressed change animation state
          onPress: () {
            animationController.isCompleted
                ? animationController.reverse()
                : animationController.forward();
          },

          // Floating Action button Icon color
          iconColor: CustomColor.blue11,

          // Flaoting Action button Icon
          iconData: Icons.photo,
          backGroundColor: Colors.white,
        ));
  }
}
