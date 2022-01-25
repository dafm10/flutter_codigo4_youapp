class Default {

  String url;
  int width;
  int height;

  Default({
    required this.url,
    required this.width,
    required this.height,
  });

  factory Default.fromJson(Map<String, dynamic> json) => Default(
    url: json["url"] ?? "",
    width: json["width"] ?? 0,
    height: json["height"] ?? 0,
  );

  Map<String, dynamic> toJson() => {
    "url": url,
    "width": width,
    "height": height,
  };
}