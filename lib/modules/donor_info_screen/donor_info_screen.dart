import 'package:down/components/components.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../constants/constants.dart';

class DonorInfoScreen extends StatelessWidget {
  const DonorInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xffB8EBCB),
              Color(0xffEEF8F2),
              Colors.white,
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Find Donor',
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Search for blood donors around you ',
              style: TextStyle(
                fontSize: 18,
                color: Color(0xff4A4B4D),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Choose Blood Group',
              style: TextStyle(
                fontSize: 25,
                color: Color(0xff32D74B),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 320,
              child: Wrap(
                children: List.generate(
                    8, (index) => BloodKindBubble(title: bloodKinds[index])),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Location',
              style: TextStyle(
                fontSize: 25,
                color: Color(0xff32D74B),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 50,
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.black.withOpacity(.3),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Press To Get your location',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black.withOpacity(.3),
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const MainButton(
                      label: 'Find Donor',
                      width: double.infinity,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const MainButton(
                      label: 'Emergency Search',
                      width: double.infinity,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(child: Lottie.asset('assets/lotties/blood_donation.json')),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
