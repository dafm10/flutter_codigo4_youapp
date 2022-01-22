import 'package:flutter/material.dart';
import 'package:flutter_codigo4_youapp/ui/widgets/item_filter_widget.dart';
import 'package:flutter_codigo4_youapp/ui/widgets/item_list_video_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xff1B1B1B),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff2E2E2E),
                        elevation: 0,
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 12.0),
                      ),
                      onPressed: () {},
                      icon: Icon(
                        Icons.explore_outlined,
                        size: 26.0,
                      ),
                      label: Text(
                        "Explorar",
                      ),
                    ),
                    const SizedBox(
                      height: 35.0,
                      child: VerticalDivider(
                        color: Colors.white24,
                        thickness: 0.9,
                        width: 28.0,
                      ),
                    ),
                    ItemFilterWidget(
                      nameFilter: "Todos",
                      selected: false,
                    ),
                    ItemFilterWidget(
                      nameFilter: "Podcast",
                      selected: true,
                    ),
                    ItemFilterWidget(
                      nameFilter: "Comedia",
                      selected: false,
                    ),
                    ItemFilterWidget(
                      nameFilter: "Flutter",
                      selected: false,
                    ),
                    ItemFilterWidget(
                      nameFilter: "Programación",
                      selected: false,
                    ),
                    ItemFilterWidget(
                      nameFilter: "Apple",
                      selected: false,
                    ),
                  ],
                ),
              ),
            ),
            ItemListVideoWidget(),
            ItemListVideoWidget(),
            ItemListVideoWidget(),
            ItemListVideoWidget(),
          ],
        ),
      ),
    );
  }
}
