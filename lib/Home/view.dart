import 'package:flutter/material.dart';
import 'package:nuevas_promesas/ItemOne/view.dart';
import 'package:nuevas_promesas/ItemThree/view.dart';
import 'package:nuevas_promesas/ItemTwo/view.dart';
import 'package:nuevas_promesas/Login/login_view.dart';
import 'package:nuevas_promesas/contador/contador.dart';
import 'package:nuevas_promesas/itemFive/view.dart';
import 'package:nuevas_promesas/itemFour/view.dart';
import 'package:nuevas_promesas/videos/videos.dart';

class HomeView extends StatefulWidget {
  static String name = "HomeView";
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: Column(
        children: [
          DrawerHeader(child: Container()),
          Column(
            children: [
              ListTile(
                title: const Text("Item1"),
                onTap: () {
                  Navigator.pushNamed(context, ItemOneView.name);
                },
              ),
              ListTile(
                title: const Text("Item2"),
                onTap: () {
                  Navigator.pushNamed(context, ItemTwoView.name);
                },
              ),
              ListTile(
                title: const Text("Item3"),
                onTap: () {
                  Navigator.pushNamed(context, ItemThreeView.name);
                },
              ),
              ListTile(
                title: const Text("Login"),
                onTap: () {
                  Navigator.pushNamed(context, LoginView.name);
                },
              ),
              ListTile(
                title: const Text("Item4"),
                onTap: () {
                  Navigator.pushNamed(context, ItemFourView.name);
                },
              ),
              ListTile(
                title: const Text("Item5"),
                onTap: () {
                  Navigator.pushNamed(context, ItemFiveView.name);
                },   
              ),
              ListTile(
                title: const Text("Contador"),
                onTap: () {
                  Navigator.pushNamed(context, Contador.name);
                },
                
              ),
              ListTile(
                title: const Text("Videos"),
                onTap: () {
                  Navigator.pushNamed(context, Videos.name);
                },
                
              ),
            ],
          )
        ],
      )),
      appBar: AppBar(
        title: const Text("Home View"),
      ),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.green,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                width: 100,
                height: 100,
                color: Colors.red,
              ),
              Container(
                color: Colors.black,
                height: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      width: 100,
                      height: 100,
                      color: Colors.red,
                      child: Container(
                        decoration: BoxDecoration(color: Colors.blue),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 100,
                      height: 100,
                      color: Colors.red,
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 100,
                      height: 100,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                width: 100,
                height: 100,
                color: Colors.red,
              ),
            ],
          )),
    );
  }
}
