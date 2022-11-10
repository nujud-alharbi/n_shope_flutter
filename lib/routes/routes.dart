import 'package:get/get.dart';
import 'package:shop_app/view/screens/auth/login_screen.dart';
import 'package:shop_app/view/screens/auth/signup_screen.dart';
import 'package:shop_app/view/screens/welcome_screen.dart';

class AppRoutes{


//  initialRoute
static const welcome = Routes.welcomeScreen ;

//getPages

static final routes =[
  GetPage(
    name: Routes.welcomeScreen,
    page: () => WelcomeScreen(),
  ),
  GetPage(
    name: Routes.loginScreen,
    page: () => LoginScreen(),
  ),
  GetPage(
    name: Routes.signupScreen,
    page: () => SignUpScreen(),
  ),

];


}


class Routes{

  static const welcomeScreen = '/WelcomeScreen';
  static const loginScreen = '/LoginScreen';
  static const signupScreen = '/SignUpScreen';
}