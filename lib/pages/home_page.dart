import 'package:flutter/material.dart';

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
                          "Podcast",
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
                          "Programación",
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
                          "Comics",
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
            ItemListVideoWidget(height: _height),
            ItemListVideoWidget(height: _height),
            ItemListVideoWidget(height: _height),
            ItemListVideoWidget(height: _height),
            ItemListVideoWidget(height: _height),
          ],
        ),
      ),
    );
  }
}

class ItemListVideoWidget extends StatelessWidget {
  const ItemListVideoWidget({
    Key? key,
    required double height,
  }) : _height = height, super(key: key);

  final double _height;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 2.0, bottom: 16.0),
      child: Column(
        children: [
          Stack(
            children: [
              Image.network(
                "https://pbs.twimg.com/media/FIvl3LOXwAIQ358?format=jpg&name=large",
                height: _height * 0.3,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  margin: const EdgeInsets.all(8.0),
                  padding: const EdgeInsets.symmetric(
                      vertical: 4.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(2.0),
                  ),
                  child: Text(
                    "30:29",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 16.0,
              backgroundImage: NetworkImage(
                "https://yt3.ggpht.com/ytc/AKedOLRFUNsF6J0E_KURLUU3D0vqXiyhylruAKhmFqMhL3o=s176-c-k-c0x00ffffff-no-rj",
              ),
            ),
            title: Text(
              "RabbitMQ Tutorial - Message Queues and Distributed Systems",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14.0,
              ),
            ),
            subtitle: Container(
              margin: const EdgeInsets.symmetric(vertical: 4.0),
              child: Text(
                "Amigoscode - 9.2 K vistas - hace 1 día",
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 12.0,
                ),
              ),
            ),
            trailing: Container(
              padding: const EdgeInsets.only(top: 4.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.more_vert,
                    color: Colors.white,
                    size: 16.0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
