import 'package:flutter/material.dart';

class ItemOneView extends StatefulWidget {
  static String name = "ItemOneView";
  const ItemOneView({super.key});

  @override
  State<ItemOneView> createState() => _ItemOneViewState();
}

class _ItemOneViewState extends State<ItemOneView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Lista Vista"),
          centerTitle: true,
        ),
        // body: Container(
        //   height: double.infinity,
        //   width: double.infinity,
        // color: Color.fromARGB(133, 186, 185, 185),
        body: SingleChildScrollView(
          // height: double.infinity,
          // width: double.infinity,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              papuListView(),
              papuListView(),
              papuListView(),
              papuListView(),
              papuListView(),
              papuListView(),
              papuListView(),
              papuListView(),
              papuListView(),
              papuListView(),
              papuListView(),
              papuListView(),
              papuListView(),
            ],
          ),
        ));
  }
}

class papuListView extends StatelessWidget {
  const papuListView({
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
        color: Color.fromARGB(255, 255, 255, 255),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 163, 156, 156),
            blurRadius: 10,
            offset: Offset(5, 5),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            height: double.infinity,
            width: 55,
            // // color: Colors.blue,
            // child: const Icon(Icons.computer,
            //     size: 30,
            //     // color: Colors.red
            // )

            child: const Center(
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Color.fromARGB(255, 242, 184, 96),
                child: Icon(
                  Icons.computer,
                  size: 23,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            height: double.infinity,
            width: 295,
            // color: Color.fromARGB(255, 212, 234, 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 50,
                  // color: Color.fromARGB(255, 158, 4, 4),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 7),
                        height: 25,
                        width: 70,
                        color: Colors.white,
                        child: Text(
                          "天上的小白羊",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        height: 25,
                        width: 70,
                        color: Colors.white,
                        child: Text(
                          "天上的小白羊",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 40),
                        height: 30,
                        width: 60,
                        color: Color.fromARGB(255, 251, 3, 3),
                        child: TextButton(
                          onPressed: () {
                            // Respond to button press
                          },
                          child: Text(
                            "天上的小",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  // color: Color.fromARGB(255, 98, 180, 47),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Text("天上的 : 2018-03-28"),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Text("天上的 : 2019-03-29"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
