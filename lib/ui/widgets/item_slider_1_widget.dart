import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemSlider1Widget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    double _height = MediaQuery.of(context).size.height;

    return Container(
      margin: const EdgeInsets.only(right: 18.0),
      // para limitar el ancho del texto
      constraints: BoxConstraints(
        maxWidth: _height * 0.08,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: _height * 0.04,
            backgroundImage: NetworkImage(
              "https://yt3.ggpht.com/ytc/AKedOLTzm4MXu8dttlPAC3LyaLktWVdZ4MBW5c21vDrWeNU=s176-c-k-c0x00ffffff-no-rj-mo",
            ),
          ),
          SizedBox(height: 6.0,),
          Text(
            "TAMAYO",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.white54,
              fontSize: 11.0,
            ),
          ),
        ],
      ),
    );
  }
}