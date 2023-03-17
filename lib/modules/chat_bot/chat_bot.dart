import 'package:down/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatBot extends StatelessWidget {
  ChatBot({
    Key? key,
    this.isuser = false,
  }) : super(key: key);
  bool isuser = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset('assets/for_design/chat_bot_icon.svg'),
        ),
        title: const Text(
          'ARIA',
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/for_design/chat_bot_background.png'),
              fit: BoxFit.cover),
        ),
        child: Container(
          height: double.maxFinite,
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) =>
                        isuser ? const UserMessage() : const BotMessage(),
                    separatorBuilder: (context, index) => const SizedBox(
                          height: 15,
                        ),
                    itemCount: 2),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                color: Colors.transparent,
                child: Row(children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        contentPadding: EdgeInsets.only(left: 10),
                        hintText: 'Ask Something ...',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.mic,
                      color: Colors.blue[300],
                    ),
                  )
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
