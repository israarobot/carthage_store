import 'package:flutter/material.dart';
import 'package:get/get.dart'; 
import 'package:carthage_store/admin/admin-settings.dart';
import 'package:carthage_store/admin/bayers.dart';
import 'package:carthage_store/admin/products.dart';
import 'package:carthage_store/admin/profil.dart';
import 'package:carthage_store/admin/admin.dart';
import 'package:carthage_store/admin/sellers.dart';
import 'package:carthage_store/buyers/favorites_screen.dart';
import 'package:carthage_store/buyers/home.dart';
import 'package:carthage_store/login/login.dart';
import 'package:carthage_store/onboarding/onboarding_Screen.dart';
import 'package:carthage_store/buyers/payement/payment.dart';
import 'package:carthage_store/buyers/payement/payment_screen.dart';
import 'package:carthage_store/buyers/profile_screen.dart';
import 'package:carthage_store/buyers/search_screen.dart';
import 'package:carthage_store/sellers/dashboard_seller.dart';
import 'package:carthage_store/sellers/earning.dart';
import 'package:carthage_store/sellers/orders.dart';
import 'package:carthage_store/sellers/settings.dart';
import 'package:carthage_store/signup/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp( // Changed from MaterialApp to GetMaterialApp
      debugShowCheckedModeBanner: false,
      title: 'Carthage Store',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/home',
      routes: {
        '/onboarding': (context) => OnboardScreen(),
        '/login': (context) => SigninScreen(),
        '/signup': (context) => SignupScreen(),
        '/profile': (context) => ProfileScreen(),
        '/home': (context) => HomeScreen(),
        '/favorites': (context) => FavoritesScreen(),
        '/search': (context) => SearchScreen(),
        '/payement': (context) => PaymentScreen(),
        '/payement-sucess': (context) => PaymentSuccessScreen(),
        '/adminsettings': (context) => AdminAccountSettingsScreen(),
        '/admin': (context) => AdminDashboardScreen(),
        '/bayers': (context) => BuyersScreen(),
        '/products': (context) => ProductsScreen(),
        '/sellers': (context) => SellersScreen(),
        '/dashboard-seller': (context) => SellerDashboard(),
        '/order-seller': (context) => OrdersScreen(),
        '/setting-seller': (context) => SettingsScreen(),
        '/earning-seller': (context) => EarningsScreen(),
      },
    );
  }
}