import 'package:down/constants/constants.dart';
import 'package:flutter/material.dart';

class PrescriptionHistory extends StatelessWidget {
  const PrescriptionHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
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
          'Prescription History',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Colors.black,
              ),
        ),
      ),
      body: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: InputBorder.none,
                hintText: 'Search',
                prefixIcon: Icon(
                  Icons.search,
                  color: mainColor,
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    Icons.add,
                    color: mainColor,
                  ),
                  onPressed: () {},
                )),
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 1,
              crossAxisSpacing: 1,
              childAspectRatio: 1 / 1.3,
              children: List.generate(
                  20, (index) => const PrescriptionHistoryComponent()),
            ),
          ),
        ],
      ),
    );
  }
}

class PrescriptionHistoryComponent extends StatelessWidget {
  const PrescriptionHistoryComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const Image(
            image: AssetImage('assets/for_design/prescription.png'),
            width: 90,
            height: 180,
            fit: BoxFit.contain,
          ),
          const SizedBox(
            height: 5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Title  : Heart Diseases'),
              const SizedBox(
                height: 10,
              ),
              Text('Time :  ${DateTime.now().toString().substring(0, 10)}'),
            ],
          )
        ],
      ),
    );
  }
}
