import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_actividad3/home.dart';

class contenedores extends StatefulWidget {
  const contenedores({super.key});

  @override
  State<contenedores> createState() => _contenedoresState();
}

class _contenedoresState extends State<contenedores> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: AnimalsFooter(),
      body: AnimalsBody(),
    );
  }

  Widget AnimalsFooter() {
    List items = [
      FeatherIcons.home,
      FeatherIcons.cloud,
      FeatherIcons.search,
      FeatherIcons.settings,
    ];

    return Container(
      height: 60,
      decoration: BoxDecoration(color: Colors.greenAccent),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(4, (index) {
            return IconButton(
                onPressed: () {
                  setState(() {});
                },
                icon: Icon(
                  items[index],
                ));
          }),
        ),
      ),
    );
  }

  Widget AnimalsBody() {
    return Container(
      child: Home(),
    );
  }
}
