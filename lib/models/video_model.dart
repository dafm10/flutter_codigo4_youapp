
import 'package:flutter_codigo4_youapp/models/id_model.dart';
import 'package:flutter_codigo4_youapp/models/snippet_model.dart';

class VideoModel {

  String kind;
  String etag;
  Id id;
  Snippet snippet;

  VideoModel({
    required this.kind,
    required this.etag,
    required this.id,
    required this.snippet,
  });

  factory VideoModel.fromJson(Map<String, dynamic> json) => VideoModel(
    kind: json["kind"],
    etag: json["etag"],
    id: Id.fromJson(json["id"]),
    snippet: Snippet.fromJson(json["snippet"]),
  );

  Map<String, dynamic> toJson() => {
    "kind": kind,
    "etag": etag,
    "id": id.toJson(),
    "snippet": snippet.toJson(),
  };
}
