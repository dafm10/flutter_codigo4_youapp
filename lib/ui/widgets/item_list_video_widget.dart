import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemListVideoWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    double _height = MediaQuery.of(context).size.height;

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
