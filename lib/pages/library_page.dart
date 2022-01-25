
import 'package:flutter/material.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({Key? key}) : super(key: key);

  @override
  _LibraryPageState createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1B1B1B),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
              child: Row(
                children: [
                  Icon(
                    Icons.history,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  SizedBox(
                    width: 24.0,
                  ),
                  Text(
                    "Historial",
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                ],
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
              child: Row(
                children: [
                  Icon(
                    Icons.ondemand_video,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  SizedBox(
                    width: 24.0,
                  ),
                  Text(
                    "tus Videos",
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                ],
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
              child: Row(
                children: [
                  Icon(
                    Icons.local_movies_outlined,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  SizedBox(
                    width: 24.0,
                  ),
                  Text(
                    "Mis Peliculas",
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                ],
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
              child: Row(
                children: [
                  Icon(
                    Icons.history_toggle_off,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  const SizedBox(
                    width: 24.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ver más tarde",
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      ),
                      SizedBox(
                        height: 3.0,
                      ),
                      Text(
                        "11 videos por mirar",
                        style: TextStyle(color: Colors.white, fontSize: 14.0),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.white38,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Listas de reproducción",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                    ),
                  ),
                  DropdownButtonHideUnderline(
                    child: DropdownButton(
                      value: 1,
                      icon: Icon(Icons.keyboard_arrow_down),
                      items: [
                        DropdownMenuItem(
                          value: 1,
                          child: Text(
                            "Agregado recientemente",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                        DropdownMenuItem(
                          value: 2,
                          child: Text(
                            "Agregado recientemente",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin:
              const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
              child: Row(
                children: [
                  Icon(
                    Icons.add,
                    color: Colors.blueAccent,
                    size: 30.0,
                  ),
                  SizedBox(
                    width: 24.0,
                  ),
                  Text(
                    "Lista de reproducción nueva",
                    style: TextStyle(color: Colors.blueAccent, fontSize: 16.0),
                  ),
                ],
              ),
            ),
            Container(
              margin:
              const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
              child: Row(
                children: [
                  Icon(
                   Icons.thumb_up_alt_outlined,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  const SizedBox(
                    width: 24.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Videos que me gustan",
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      ),
                      SizedBox(
                        height: 3.0,
                      ),
                      Text(
                        "68 videos",
                        style: TextStyle(color: Colors.white, fontSize: 14.0),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
