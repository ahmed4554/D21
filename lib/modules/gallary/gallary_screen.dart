import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../constants/constants.dart';

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

    final curvedAnimation = CurvedAnimation(curve: Curves.easeInOut, parent: animationController);
    animation = Tween<double>(begin: 0, end: 1).animate(curvedAnimation);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          "Object Detection",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        elevation: 0,
        backgroundColor: mainColor,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'click the button to open the camera or gallary'.toUpperCase(),
              
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(child: Lottie.asset('assets/lotties/object_detection.json')),
        ],
      ),
      
      //Init Floating Action Bubble 
      floatingActionButton: FloatingActionBubble(
        // Menu items
        items: <Bubble>[

          // Floating action menu item
          Bubble(
            title:"Camera",
            iconColor :Colors.white,
            bubbleColor : Colors.blue,
            icon:Icons.camera,
            titleStyle:TextStyle(fontSize: 16 , color: Colors.white),
            onPress: () {
              animationController.reverse();
            },
          ),
          // Floating action menu item
          Bubble(
            title:"Gallary",
            iconColor :Colors.white,
            bubbleColor : Colors.blue,
            icon:Icons.photo,
            titleStyle:TextStyle(fontSize: 16 , color: Colors.white),
            onPress: () {
              animationController.reverse();
            },
          ),
        ],

        // animation controller
        animation: animation,

        // On pressed change animation state
        onPress: () => animationController.isCompleted
              ? animationController.reverse()
              : animationController.forward(),
        
        // Floating Action button Icon color
        iconColor: Colors.blue,

        // Flaoting Action button Icon 
        iconData: Icons.photo, 
        backGroundColor: Colors.white,
      )
    );
  }
}
