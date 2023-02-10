import 'package:flutter/material.dart';
import 'package:nuevas_promesas/Home/view.dart';
import 'package:nuevas_promesas/ItemOne/view.dart';
import 'package:nuevas_promesas/ItemThree/view.dart';
import 'package:nuevas_promesas/ItemTwo/view.dart';
import 'package:nuevas_promesas/Login/login_view.dart';
import 'package:nuevas_promesas/contador/contador.dart';
import 'package:nuevas_promesas/itemFive/view.dart';
import 'package:nuevas_promesas/itemFour/view.dart';
import 'package:nuevas_promesas/videos/videos.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: HomeView.name,
      routes: {
        HomeView.name: (context) => const HomeView(),
        ItemOneView.name: (context) => const ItemOneView(),
        ItemTwoView.name: (context) => const ItemTwoView(),
        ItemThreeView.name:(context) => const ItemThreeView(),
        LoginView.name:(context) => LoginView(),
        ItemFourView.name:(context) => ItemFourView(),
        ItemFiveView.name:(context) => ItemFiveView(),
        Contador.name:(context) => Contador(),
        Videos.name:(context) => Videos(),
      },
    );
  }
}
