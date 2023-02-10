import 'package:flutter/material.dart';


class ItemTwoView extends StatefulWidget {
  static String name = "ItemTwoView";
  const ItemTwoView({super.key});

  @override
  State<ItemTwoView> createState() => _ItemTwoViewState();
}

class _ItemTwoViewState extends State<ItemTwoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home View"),
      ),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.yellow,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(10),
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
                      margin: EdgeInsets.symmetric(horizontal:10),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      width: 100,
                      height: 100,
                      color: Colors.red,
                      child: Container(
                        color: Colors.blue,
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
