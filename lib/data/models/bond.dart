// ignore_for_file: public_member_api_docs, sort_constructors_first
class Bond {
  int id;
  String title;
  String image;
  String rate;
  String investPercentage;
  bool havePadding;
  Bond({
    required this.id,
    required this.title,
    required this.image,
    required this.rate,
    required this.investPercentage,
    required this.havePadding,
  });
}
