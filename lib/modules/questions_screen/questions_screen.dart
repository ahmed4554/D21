import 'dart:developer';

import 'package:down/components/components.dart';
import 'package:down/constants/constants.dart';
import 'package:flutter/material.dart';

import '../../models/numbers_model.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({
    Key? key,
  }) : super(key: key);
  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  NumbersModel? model;
  int currentIndex = 0;

  @override
  void initState() {
    setState(() {
      model = NumbersModel.fromJson(numbers);
    });
    log(model!.numberQuestions.length.toString());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () {},
        ),
        title: Text(
          'Play Quiz',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text('Question ${currentIndex + 1} / ${model!.numberQuestions.length}'),
            Expanded(
              child: BuildMultiShadowContainer(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * .6,
                  child: PageView.builder(
                    itemBuilder: (context, index) {
                      currentIndex = index;
                      return MultiChoiseQuestionComponent(
                        model: model!.numberQuestions[index],
                      );
                    },
                    scrollDirection: Axis.horizontal,
                    itemCount: model!.numberQuestions.length,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
