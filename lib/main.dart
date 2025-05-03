import 'package:carthage_store/admin/admin-settings.dart';
import 'package:carthage_store/admin/bayers.dart';
import 'package:carthage_store/admin/products.dart';
import  'package:carthage_store/admin/profil.dart';
import 'package:carthage_store/admin/admin.dart';
import 'package:carthage_store/admin/sellers.dart';
import 'package:carthage_store/exemple.dart';
import 'package:carthage_store/favorites_screen.dart';
import 'package:carthage_store/home.dart';
import 'package:carthage_store/login/login.dart';
import 'package:carthage_store/onboarding/onboarding_Screen.dart';
import 'package:carthage_store/payement/payment.dart';
import 'package:carthage_store/payement/payment_screen.dart';
import 'package:carthage_store/profile_screen.dart';
import 'package:carthage_store/search_screen.dart';
import 'package:carthage_store/signup/signup.dart';
import 'package:carthage_store/todo.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Carthage Store',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
     home:OnboardScreen(),

    );
  }
}