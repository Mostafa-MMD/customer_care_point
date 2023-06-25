import 'package:flutter/material.dart';
import 'package:graduation/screens/drawer_screens/screens/about_screen.dart';
import 'package:graduation/screens/drawer_screens/screens/helper_and_support_screen/general_screen.dart';
import 'package:graduation/screens/drawer_screens/screens/rate_screen.dart';
import 'package:graduation/screens/drawer_screens/screens/share_app_screen.dart';
import 'package:graduation/screens/drawer_screens/screens/user_information_screen.dart';
import 'package:graduation/screens/main_screen.dart';
import 'package:graduation/screens/introduction_screen/introduction_screen.dart';
import 'package:graduation/screens/navbar_screens/invoice_screen.dart';
import 'package:graduation/screens/navbar_screens/home_screen.dart';
import 'package:graduation/screens/navbar_screens/orders_screen.dart';
import 'package:graduation/screens/navbar_screens/shopping_cart_screen.dart';
import 'package:graduation/screens/auth/login_screen.dart';
import 'package:graduation/screens/auth/register_screen.dart';
import 'package:provider/provider.dart';
import 'models/model_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => ModelProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const IntroScreen(),
        routes: {
          IntroScreen.introductionScreenRoute: (context) => const IntroScreen(),
          LoginScreen.loginScreenRoute: (context) => const LoginScreen(),
          RegisterScreen.registerScreenRoute: (context) => RegisterScreen(),
          MainScreen.homeScreenRoute: (context) => const MainScreen(),
          HomeScreen.mainScreenRoute: (context) => const HomeScreen(),
          ShoppingCartScreen.shoppingCartRoute: (context) =>
              const ShoppingCartScreen(),
          OrdersScreen.ordersScreenRoute: (context) => const OrdersScreen(),
          AboutScreen.aboutScreenRoute: (context) => const AboutScreen(),
          RateScreen.rateScreenRoute: (context) => const RateScreen(),
          ShareAppScreen.shareAppScreenRoute: (context) =>
              const ShareAppScreen(),
          InvoiceScreen.invoiceScreenRoute: (context) => const InvoiceScreen(),
          UserInformationScreen.userInformationScreenRoute: (context) =>
              UserInformationScreen(),
          GeneralScreen.generalScreenRoute: (context) => const GeneralScreen(),
        },
      ),
    );
  }
}
