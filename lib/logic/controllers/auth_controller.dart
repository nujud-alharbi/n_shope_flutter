
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/routes.dart';



class AuthController extends GetxController {

  bool isVisiblity = false;
  bool isCheckBox = false;
  FirebaseAuth auth = FirebaseAuth.instance;
  void Visiblity(){
    isVisiblity = !isVisiblity;
    update();
  }

  void checkBox(){
    isCheckBox = !isCheckBox;
    update();
  }


  Future<void> signUpUsingFirebase(
  {required String name ,
  required String email ,
  required String password,}
      ) async {


    try {
    await auth .createUserWithEmailAndPassword(
          email: email,
          password: password,
      );

update();
Get.offNamed(Routes.mainScreen);
    } on FirebaseAuthException catch (error) {

      String title = error.code.replaceAll(RegExp('-'), ' ').capitalize!;
      String message = '';

      if (error.code == 'weak-password') {

        message = 'provided password  too weak.';
      } else if (error.code == 'email-already-in-use') {
        message = 'The account already exists for that email.';

      }else {
        message = error.toString();
      }

      Get.snackbar(
         title,
          message
      ,snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.green,
      colorText: Colors.white,
      );



    } catch (error) {
      Get.snackbar(
        "Error!",
        error.toString()
        ,snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );

    }








  }


  void logInUsingFirebase(){



  }

  void googleSingUpApp(){



  }

  void faceBookSignUpApp(){



  }

  void resetPassword(){



  }

  void signOutFromApp(){



  }

}



//
//
//
// void signUpUsingFirebase
//     ({
//
//   required String name,
//   required String email,
//   required String password,
//
// }) async {
//
//   try {
//     await auth.createUserWithEmailAndPassword(
//       email: email,
//       password: password,
//
//     );
//     update();
//   } on FirebaseAuthException catch (error) {
//     String title = error.code;
//     String message = '';
//
//
//     if (error.code == 'weak-password') {
//
//       message = 'The password provided is too weak.';
//
//     } else if (error.code == 'email-already-in-use') {
//
//       message = 'The account already exists for that email.';
//     } else{
//
//       message = error.message.toString();
//
//     }
//     Get.snackbar(title,
//         message ,
//         snackPosition: SnackPosition.BOTTOM,
//         backgroundColor: Colors.green,
//         colorText: Colors.white);
//
//   } catch (error) {
//     Get.snackbar('Error!',
//         error.toString() ,
//         snackPosition: SnackPosition.BOTTOM,
//         backgroundColor: Colors.green,
//         colorText: Colors.white);
//   }
//
// }