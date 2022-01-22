import 'package:flutter/material.dart';
import 'package:flutter_codigo4_youapp/ui/widgets/item_slider_1_widget.dart';

class SubscriptionPage extends StatefulWidget {
  const SubscriptionPage({Key? key}) : super(key: key);

  @override
  _SubscriptionPageState createState() => _SubscriptionPageState();
}

class _SubscriptionPageState extends State<SubscriptionPage> {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xff1B1B1B),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: _height * 0.12,
              //color: Colors.redAccent,
              child: Stack(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    child: Row(
                      children: [
                        ItemSlider1Widget(),
                        ItemSlider1Widget(),
                        ItemSlider1Widget(),
                        ItemSlider1Widget(),
                        ItemSlider1Widget(),
                        ItemSlider1Widget(),
                        SizedBox(
                          width: _width * 0.18,
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: _height * 0.12,
                      width: _width * 0.18,
                      color: Color(0xff1B1B1B),
                      alignment: Alignment.center,
                      child: Text(
                        "TODOS",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 15.0),
                      child: FilterChip(
                        label: Text("Todos"),
                        onSelected: (bool value) {},
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 15.0),
                      child: FilterChip(
                        backgroundColor: Color(0xff2E2E2E),
                        label: Text(
                          "Hoy",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onSelected: (bool value) {},
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 10.0),
                      child: FilterChip(
                        backgroundColor: Color(0xff2E2E2E),
                        label: Text(
                          "Continúa mirando",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onSelected: (bool value) {},
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 10.0),
                      child: FilterChip(
                        backgroundColor: Color(0xff2E2E2E),
                        label: Text(
                          "Sin mirar",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onSelected: (bool value) {},
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 10.0),
                      child: FilterChip(
                        backgroundColor: Color(0xff2E2E2E),
                        label: Text(
                          "En tiempo real",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onSelected: (bool value) {},
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 10.0),
                      child: FilterChip(
                        backgroundColor: Color(0xff2E2E2E),
                        label: Text(
                          "Publicaciones",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onSelected: (bool value) {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

