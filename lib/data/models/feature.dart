class Feature {
  int id;
  String title;
  String icon;
  bool enable;
  Feature({
    required this.id,
    required this.title,
    required this.icon,
    this.enable = true,
  });
}
