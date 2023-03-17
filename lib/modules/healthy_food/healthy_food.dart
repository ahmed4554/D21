

import 'package:down/constants/constants.dart';
import 'package:flutter/material.dart';

class HealtyFoodScreen extends StatelessWidget {
  const HealtyFoodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.blueAccent,
            ),
            onPressed: () {},
          ),
          title: Text(
            'Healthy Food',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Colors.black,
                ),
          ),
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  healthyFood.replaceAll('.', '.\n'),
                  style: const TextStyle(
                    height: 1.5,
                    color: Colors.black45,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
