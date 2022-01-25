class Id {

  String kind;
  String videoId;

  Id({
    required this.kind,
    required this.videoId,
  });

  factory Id.fromJson(Map<String, dynamic> json) => Id(
    kind: json["kind"],
    videoId: json["videoId"],
  );

  Map<String, dynamic> toJson() => {
    "kind": kind,
    "videoId": videoId,
  };
}