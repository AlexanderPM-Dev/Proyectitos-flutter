import 'package:flutter/material.dart';

class ItemFiveView extends StatefulWidget {
  static String name = "ItemFiveView";
  const ItemFiveView({super.key});

  @override
  State<ItemFiveView> createState() => _ItemFiveViewState();
}

class _ItemFiveViewState extends State<ItemFiveView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: const Text("Lista Vista",textAlign: TextAlign.center),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color.fromARGB(134, 206, 204, 204),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            WidgetPapu(),

          ], 
        ),
      ),
    );

  }
}

class WidgetPapu extends StatelessWidget {
  const WidgetPapu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(15),
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
        ),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                width: double.infinity,
                height: 30,
                color: Colors.red,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left:7),
                      height:15,
                      width: 20,
                      color: Colors.white,
                    ),
                    Container(
                      margin: EdgeInsets.only(left:7),
                      height:25,
                      width: 70,
                      color: Colors.white,
                      child: Text(
                              "hola fuchi",
                              textAlign: TextAlign.center,
                              ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left:7),
                      height:25,
                      width: 70,
                      color: Colors.white,
                      child: Text(
                              "hola fuchi",
                              textAlign: TextAlign.center,
                              ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left:80),
                      height:25,
                      width: 50,
                      color: Colors.white,
                      child: TextField(
                        
                              textAlign: TextAlign.center,
                              ),
                    ),
                  ],
                ),
              ),
              
              Container(
                margin: EdgeInsets.all(10),
                width: double.infinity,
                height: 30,
                color: Colors.red,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left:7),
                      height:15,
                      width: 20,
                      color: Colors.white,
                    ),
                    Container(
                      margin: EdgeInsets.only(left:7),
                      height:25,
                      width: 70,
                      color: Colors.white,
                      child: Text(
                              "hola fuchi",
                              textAlign: TextAlign.center,
                              ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left:7),
                      height:25,
                      width: 70,
                      color: Colors.white,
                      child: Text(
                              "hola fuchi",
                              textAlign: TextAlign.center,
                              ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left:80),
                      height:25,
                      width: 50,
                      color: Colors.white,
                      child: TextButton(
                              onPressed: () {
                              // Respond to button press
                              },
                              child: Text("text",textAlign:TextAlign.center,),
                            )
                    ),
                  ],
                ),
              ),

              ],
            ),
    );
  }
}

