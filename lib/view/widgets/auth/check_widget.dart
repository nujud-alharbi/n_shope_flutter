import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/view/widgets/text_utils.dart';

import '../../../theme.dart';

class CheckWidget extends StatelessWidget {
  const CheckWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //لظغط على continer وتفعيلها ك checkbox
    return Row(
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Get.isDarkMode ? Image.asset("assets/images/check.png") : Icon(
              Icons.done,
              color: pinkClr,
              size: 30,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Row(
          children: [
            TextUtils(
                text: "I accept ",
                fointSize: 16,
                fontWeight: FontWeight.normal,
                color: Get.isDarkMode ? Colors.black : Colors.white,
                underLine: TextDecoration.none
            ),
            TextUtils(
                text: "terms & conditions",
                fointSize: 16,
                fontWeight: FontWeight.normal,
                color: Get.isDarkMode ? Colors.black : Colors.white,
                underLine: TextDecoration.underline
            ),
          ],
        ),
      ],
    );
  }
}
