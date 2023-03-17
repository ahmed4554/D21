import 'dart:developer';

import 'package:down/components/components.dart';
import 'package:down/constants/constants.dart';
import 'package:down/models/alphapet_model.dart';
import 'package:flutter/material.dart';

class AlphabetScreen extends StatefulWidget {
  const AlphabetScreen({Key? key}) : super(key: key);

  @override
  State<AlphabetScreen> createState() => _AlphabetScreenState();
}

class _AlphabetScreenState extends State<AlphabetScreen> {
  late AlphapetModel model;
  @override
  void initState() {
    model = AlphapetModel.fromJson(alphapets);
    log(model.picOfChar[0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
        title: Text(
          'Alphapet',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(110),
                bottomRight: Radius.circular(110),
              ),
              child: Container(
                padding: const EdgeInsets.all(30),
                alignment: Alignment.topLeft,
                height: MediaQuery.of(context).size.height * .35,
                color: mainColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Let\'s Study',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Image.asset(
                      'assets/for_design/user_pic.png',
                      width: 100,
                      height: 100,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height*.25,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*.6,
                child: GridView.count(
                  padding: const EdgeInsets.all(10),
                  physics: const BouncingScrollPhysics(),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 4,
                  children: List.generate(
                    model.picOfChar.length,
                    (index) => AlphapetComponent(alphapetModel: model, index: index),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
