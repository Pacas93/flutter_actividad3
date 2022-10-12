import 'package:flutter/material.dart';
import 'package:flutter_actividad3/json/fotos.dart';
import 'package:flutter_actividad3/detallecat.dart';
import 'package:page_transition/page_transition.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: barraAnimalsApp(),
      body: cuerpoApp(),
    );
  }

  barraAnimalsApp() {
    return AppBar(
      backgroundColor: Colors.greenAccent,
      elevation: 10,
      title: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            "Animales y paisajes",
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Icon(Icons.list_outlined)
        ]),
      ),
    );
  }

  Widget cuerpoApp() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 30, top: 20),
              child: Row(
                children: List.generate(cate_name.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: GestureDetector(
                      onTap: () {},
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            cate_name[index],
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 3),
                          Container(
                              width: 10,
                              height: 3,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50)))
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 20,
              ),
              child: Row(
                children: List.generate(
                  Flying.length,
                  (index) {
                    return Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                PageTransition(
                                    alignment: Alignment.bottomCenter,
                                    child: DetaCat(
                                      categ: Flying[index],
                                    ),
                                    type: PageTransitionType.scale));
                          },
                          child: Column(
                            children: [
                              Container(
                                width: 180,
                                height: 180,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(Flying[index]['img']),
                                      fit: BoxFit.cover),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                Flying[index]['name'],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                Flying[index]['type'],
                                style: TextStyle(
                                    color: Colors.greenAccent,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ));
                  },
                ),
              ),
            ),
          ),

// categoria 2
          SizedBox(
            height: 20,
          ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 20,
              ),
              child: Row(
                children: List.generate(
                  reptiles.length,
                  (index) {
                    return Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: GestureDetector(
                          onTap: () {},
                          child: Column(
                            children: [
                              Container(
                                width: 180,
                                height: 180,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(reptiles[index]['img']),
                                      fit: BoxFit.cover),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                reptiles[index]['name'],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                reptiles[index]['type'],
                                style: TextStyle(
                                    color: Colors.greenAccent,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ));
                  },
                ),
              ),
            ),
          ),

          // categoria 3
          SizedBox(
            height: 20,
          ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 20,
              ),
              child: Row(
                children: List.generate(
                  acuaticos.length,
                  (index) {
                    return Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: GestureDetector(
                          onTap: () {},
                          child: Column(
                            children: [
                              Container(
                                width: 180,
                                height: 180,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage(acuaticos[index]['img']),
                                      fit: BoxFit.cover),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                acuaticos[index]['name'],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                acuaticos[index]['type'],
                                style: TextStyle(
                                    color: Colors.greenAccent,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ));
                  },
                ),
              ),
            ),
          ),

          // categoria 4
          SizedBox(
            height: 20,
          ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 20,
              ),
              child: Row(
                children: List.generate(
                  selvas.length,
                  (index) {
                    return Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: GestureDetector(
                          onTap: () {},
                          child: Column(
                            children: [
                              Container(
                                width: 180,
                                height: 180,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(selvas[index]['img']),
                                      fit: BoxFit.cover),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                selvas[index]['name'],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                selvas[index]['type'],
                                style: TextStyle(
                                    color: Colors.greenAccent,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ));
                  },
                ),
              ),
            ),
          ),

          // categoria 5
          SizedBox(
            height: 20,
          ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 20,
              ),
              child: Row(
                children: List.generate(
                  catarata.length,
                  (index) {
                    return Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: GestureDetector(
                          onTap: () {},
                          child: Column(
                            children: [
                              Container(
                                width: 180,
                                height: 180,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(catarata[index]['img']),
                                      fit: BoxFit.cover),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                catarata[index]['name'],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                catarata[index]['type'],
                                style: TextStyle(
                                    color: Colors.greenAccent,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ));
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
