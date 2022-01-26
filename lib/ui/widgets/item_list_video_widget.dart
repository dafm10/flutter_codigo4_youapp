import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_codigo4_youapp/models/video_model.dart';
import 'package:flutter_codigo4_youapp/services/api_services.dart';

class ItemListVideoWidget extends StatelessWidget {
  String imgage;
  String title;
  String channelTitle;
  String channelId;
  

  ItemListVideoWidget({
    required this.imgage,
    required this.title,
    required this.channelTitle,
    required this.channelId,
  });
  
  APIService _apiService =APIService();

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;

    return Container(
      margin: const EdgeInsets.only(top: 2.0, bottom: 16.0),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                child: Image.network(
                  imgage,
                  height: _height * 0.3,
                  fit: BoxFit.cover,
                ),
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
            leading: FutureBuilder(
              future: _apiService.getVideo(channelId),
              builder: (BuildContext context, AsyncSnapshot snap){
                if(snap.hasData){
                  VideoModel video = snap.data;
                  return CircleAvatar(
                    radius: 16.0,
                    backgroundImage: NetworkImage(
                      video.snippet.thumbnails.high.url,
                    ),
                  );
                }
                return CircularProgressIndicator();
              },
            ),
            title: Text(
              title,
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
                "$channelTitle - 9.2 K vistas - hace 1 día",
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
