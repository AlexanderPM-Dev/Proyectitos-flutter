import 'package:flutter/material.dart';

class ItemThreeView extends StatefulWidget {
  static String name = "ItemThreeView";
  const ItemThreeView({super.key});

  @override
  State<ItemThreeView> createState() => _ItemThreeViewState();
}

class _ItemThreeViewState extends State<ItemThreeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ItemThreeView"),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(10),
                  width: 200,
                  height: 100,
                  child: TextFormField(
                    initialValue: 'Username',
                    decoration: InputDecoration(
                      labelText: 'Username',
                      labelStyle: TextStyle(
                        color: Color(0xFF6200EE),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF6200EE)),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
