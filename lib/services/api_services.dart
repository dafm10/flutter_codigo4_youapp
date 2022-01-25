
import 'dart:convert';

import 'package:flutter_codigo4_youapp/models/video_model.dart';
import 'package:flutter_codigo4_youapp/utils/constants.dart';
import 'package:http/http.dart' as http;

class APIService{

  Future<List<VideoModel>> getVideoList() async {
    List<VideoModel> list = [];
    String path = "https://youtube.googleapis.com/youtube/v3/search?key=$apiKEY&maxResults=20&part=snippet";
    Uri _uri = Uri.parse(path);
    http.Response response = await http.get(_uri);
    if(response.statusCode == 200){
      Map<String, dynamic> myMap = json.decode(response.body);
      list = myMap["items"].map<VideoModel>((item)=>VideoModel.fromJson(item)).toList();
      return list;
    }
    return list;
  }

}