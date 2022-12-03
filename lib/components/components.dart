import 'package:flutter/material.dart';

class AppName extends StatelessWidget {
  const AppName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text(
          'D',
          style: TextStyle(
            fontSize: 80,
            color: Color(0xff1CB0F6),
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          '21',
          style: TextStyle(
            fontSize: 60,
            color: Color(0xffFFC800),
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class CustomInputField extends StatelessWidget {
  const CustomInputField({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
              color: Colors.black12,
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 0))
        ],
      ),
      child: TextFormField(
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          hintText: label,
          hintStyle: TextStyle(
            fontSize: 18,
            color: Colors.black.withOpacity(.2),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(30),
          ),
          prefixIcon: Icon(
            icon,
            color: Colors.black.withOpacity(.2),
          ),
        ),
      ),
    );
  }
}

class MainButton extends StatelessWidget {
  const MainButton(
      {Key? key, required this.label, this.width = double.infinity})
      : super(key: key);
  final String label;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
      width: width,
      child: MaterialButton(
        height: 50,
        color: Color(0xff58CC02),
        minWidth: double.infinity,
        onPressed: () {},
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class CustomBorder extends StatelessWidget {
  const CustomBorder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 50),
      width: double.infinity,
      height: 5,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: Colors.black38,
            width: 1,
          )),
    );
  }
}

class BloodKindBubble extends StatelessWidget {
  const BloodKindBubble({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      alignment: Alignment.center,
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
              color: Colors.black26,
              blurRadius: 5,
              spreadRadius: 1,
              offset: Offset(0, 0)),
        ],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.red,
        ),
      ),
    );
  }
}

class DonorInfo extends StatelessWidget {
  const DonorInfo({
    Key? key,
    this.contact = false,
  }) : super(key: key);
  final bool contact;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 1,
          color: Colors.black26,
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 5,
                      spreadRadius: 1,
                      offset: Offset(0, 0)),
                ],
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text(
                'B+',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Fadya Ibrahim',
                  style: TextStyle(
                    fontSize: 22,
                    color: Color(0xff4A4B4D),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        const Icon(
                          Icons.link,
                          color: Colors.green,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          contact ? 'Contact The Donor' : 'Request For Blood',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          width: double.infinity,
          height: 1,
          color: Colors.black26,
        ),
      ],
    );
  }
}

class ChatItem extends StatelessWidget {
  const ChatItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.black12),
      child: Row(
        children: const [
          CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage('assets/pic.png'),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'The Name',
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
