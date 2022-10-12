import 'package:flutter/material.dart';
import 'package:flutter_actividad3/json/fotos.dart';

class DetaCat extends StatefulWidget {
  DetaCat({Key? key, this.categ}) : super(key: key);
  final dynamic categ;

  @override
  State<DetaCat> createState() => _DetaCatState();
}

class _DetaCatState extends State<DetaCat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CuerpoCat(),
    );
  }

  Widget CuerpoCat() {
    var size = MediaQuery.of(context).size;
    List cat1 = widget.categ['Flying'];
    return SingleChildScrollView(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                  width: size.width,
                  height: 220,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(widget.categ['img']),
                        fit: BoxFit.cover),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
