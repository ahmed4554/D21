import 'package:down/components/components.dart';
import 'package:flutter/material.dart';

class HealtyFoodInnerScreen extends StatelessWidget {
  const HealtyFoodInnerScreen({Key? key}) : super(key: key);

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
          'About Us',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Colors.black,
              ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: const [
            Text(
              'Eating nourishing foods can help reduce some of the physical symptoms and increase overall health.',
              style: TextStyle(
                height: 1.5,
                color: Colors.blue,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            HealtyFoodComponent(
              data:
                  'To keep obesity at bay, feed children nutrient dense foods and limit junk food without nutritional value. A good rule of thumb is to eat ‘real food’ found in nature, and avoid man-made ‘food’ as much as possible.',
              pic: 'assets/healthy_food/1.png',
            ),
            SizedBox(
              height: 15,
            ),
            HealtyFoodComponent(
              data:
                  'Include healthy fats such as coconut and olive oil and even organic, pastured, butter containing butyric acid and omega 3 fatty acids.',
              pic: 'assets/healthy_food/2.png',
            ),
            SizedBox(
              height: 15,
            ),
            HealtyFoodComponent(
              data:
                  'For an under-active thyroid, an excellent choice is iodine rich seaweed. Seaweed snack packs are great for lunch boxes and kids love the salty taste. It can be used in salads, sprinkled on other food or used as a wrapper for healthy snacks.',
              pic: 'assets/healthy_food/3.png',
            ),
            SizedBox(
              height: 15,
            ),
            HealtyFoodComponent(
              data:
                  'Foods rich in vitamin C may help keep periodontal disease at bay. Citrus fruits (for those not suffering from GERD), strawberries, green peppers and broccoli are great choices and make easy finger foods.',
              pic: 'assets/healthy_food/4.png',
            ),
            SizedBox(
              height: 15,
            ),
            HealtyFoodComponent(
              data:
                  'Anti-microbial foods such as garlic, onion, thyme, oregano, tarragon and cinnamon are great to use on a regular basis to help kill bacteria that lead to tartar and plaque buildup.',
              pic: 'assets/healthy_food/5.png',
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
