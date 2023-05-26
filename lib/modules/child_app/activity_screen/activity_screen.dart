import 'package:flutter/material.dart';
import 'package:project/components/components.dart';
import 'package:project/components/custom_color.dart';
import 'package:project/constants/constants.dart';

class QuestionsScreen extends StatefulWidget {
  QuestionsScreen({
    Key? key,
    required this.quiz,
    required this.index,
  }) : super(key: key);

  final dynamic quiz;
  int index;

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var height = 0.0;
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: CustomColor.blue11.withOpacity(.7),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Play Quiz',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Question ${currentIndex + 1} / ${widget.quiz.questions.length}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 23.0, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: height * .8,
                child: BuildMultiShadowContainer(
                  child: SizedBox(
                    height: height * .67,
                    child: PageView.builder(
                      controller: controller,
                      onPageChanged: (int index) {
                        currentIndex = index;
                        setState(() {});
                      },
                      itemBuilder: (context, index) {
                        return SizedBox(
                          height: height * .8,
                          child: Column(
                            children: [
                              Expanded(
                                child: MultiChoiseQuestionComponent(
                                  model: widget.quiz.questions[index],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      scrollDirection: Axis.horizontal,
                      itemCount: widget.quiz.questions.length,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

