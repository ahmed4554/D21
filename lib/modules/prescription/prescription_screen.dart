import 'package:flutter/material.dart';

class PrescriptionScreen extends StatelessWidget {
  const PrescriptionScreen({Key? key}) : super(key: key);

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
          'Prescription',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Colors.black,
              ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            const Image(
              image: AssetImage('assets/for_design/prescription.png'),
              width: 150,
              height: 300,
              fit: BoxFit.contain,
            ),
            const SizedBox(
              height: 15,
            ),
            PrescriptionDataInner(
              title: 'Date',
              desc: DateTime.now().toString().substring(0, 10),
            ),
            const SizedBox(
              height: 15,
            ),
            PrescriptionDataInner(
              title: 'Specialist',
              desc: 'Heart Diseases',
            ),
            const SizedBox(
              height: 15,
            ),
            PrescriptionDataInner(
              title: 'Description',
              desc: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            ),
          ],
        ),
      ),
    );
  }
}

class PrescriptionDataInner extends StatelessWidget {
  const PrescriptionDataInner({
    Key? key,
    required this.title,
    required this.desc,
  }) : super(key: key);
  final String title, desc;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 10,),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                offset: Offset.zero,
              )
            ],
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.centerLeft,
          child: Text(
            desc,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
