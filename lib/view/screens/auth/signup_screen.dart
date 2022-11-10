import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/theme.dart';
import 'package:shop_app/utiils/my_string.dart';
import 'package:shop_app/view/widgets/text_utils.dart';

import '../../widgets/auth/auth_button.dart';
import '../../widgets/auth/auth_text_from_field.dart';
import '../../widgets/auth/check_widget.dart';
import '../../widgets/auth/container_under.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);
  final fromKey = GlobalKey<FormState>();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Get.isDarkMode ? Colors.white : darkGreyClr,
          //لازاله الخط الفاصل في app bar
          elevation: 0,
        ),
        backgroundColor: Get.isDarkMode ? Colors.white : darkGreyClr,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 1.3,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 25,
                    right: 25,
                    top: 40,
                  ),
                  child: Form(
                    key:fromKey ,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            TextUtils(
                              text: 'SGIN',
                              fointSize: 28,
                              fontWeight: FontWeight.w500,
                              color: Get.isDarkMode ? mainColor : pinkClr,
                              underLine: TextDecoration.none,
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            TextUtils(
                              text: 'UP',
                              fointSize: 28,
                              fontWeight: FontWeight.w500,
                              color: Get.isDarkMode ? Colors.black : Colors.white,
                              underLine: TextDecoration.none,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        AuthTextFormField(
                          controller: nameController,
                          obscureText: false,
                          validator: (value) {
                            if(value.toString().length <= 2 || RegExp(validationName).hasMatch(value)){

                              return 'Enter vaild name ';

                            }
                            else {
                              return null;
                            }
                          },
                          prefixIcon: Get.isDarkMode
                              ? Image.asset("assets/images/user.png")
                              : Icon(
                                  Icons.person,
                                  color: pinkClr,
                                  size: 30,
                                ),
                          suffix: const Text(""),
                          hintText: 'User Name',
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        AuthTextFormField(
                          controller: emailController,
                          obscureText: false,
                          validator: (value) {
                            if(!RegExp (validationEmail).hasMatch(value)){

                              return 'Invalid email';
                            }else{

                              return null;
                            }
                          },
                          prefixIcon: Get.isDarkMode
                              ? Image.asset("assets/images/email.png") :   Icon(
                          Icons.email,
                          color: pinkClr,
                          size: 30,
                        ),
                          suffix: const Text(""),
                          hintText: 'Email',
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        AuthTextFormField(
                          controller: passwordController,
                          obscureText: true,
                          validator: (value) {
                            if(value.toString().length < 6){
                              return 'Password should be longer or equle to 6 characters';


                            }else {
                              return null;
                            }

                          },
                          prefixIcon: Get.isDarkMode
                              ? Image.asset("assets/images/lock.png")   : Icon(
                          Icons.lock,
                          color:  pinkClr,
                          size: 30,
                        ),
                          suffix: const Text(""),
                          hintText: 'Password',
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        const CheckWidget(),
                        const SizedBox(
                          height: 50,
                        ),
                        AuthButton(
                          text: 'SIGN UP',
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              ContainerUnder(
                text: 'Already have an A count?',
                onPerssed: () {},
                textType: 'Log in ',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
