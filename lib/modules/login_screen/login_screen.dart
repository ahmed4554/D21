import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../components/components.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff9CDFB5),
                Color(0xffEEF8F2),
                Color(0xffFFFFFF),
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              SvgPicture.asset(
                'assets/logo3.svg',
                width: 300,
                height: 250,
              ),
              const SizedBox(
                height: 15,
              ),
              const AppName(),
              const SizedBox(
                height: 15,
              ),
              CustomBorder(),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Sign In',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(.6),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 48),
                child: Form(
                  child: Column(
                    children: [
                      const CustomInputField(
                        icon: Icons.person,
                        label: 'user name',
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const CustomInputField(
                        icon: Icons.lock_open_rounded,
                        label: 'password',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: true,
                            onChanged: (bool? value) {},
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          // const SizedBox(
                          //   width: 2,
                          // ),
                          Text(
                            'stay signed in',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black.withOpacity(.45),
                            ),
                          ),
                          const Spacer(),
                          const Text(
                            'forget password?',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 23, 203, 29),
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: double.infinity,
                        height: 5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              color: Colors.black38,
                              width: 1,
                            )),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      MainButton(
                        label: 'Log In',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'Don\'t have an account ? ',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black.withOpacity(.45),
                            ),
                          ),
                          const Spacer(),
                          const Text(
                            'register now',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 23, 203, 29),
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 50,)
            ],
          ),
        ),
      ),
    );
  }
}
