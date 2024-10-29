class Items {
  final String img;
  final String title;
  final String subTitle;

  ///
  Items({
    required this.img,
    required this.title,
    required this.subTitle,
  });
}

List<Items> listOfItems = [
  Items(
    img: "assets/ippo.jpg",
    title: "Hard work always pays off ! ",
    subTitle: "Outwork everyone ! ",
  ),
  Items(
    img: "assets/stand.jpg",
    title: "If there is a will , there wilL always be a way ! ",
    subTitle: "outwork yourself !!",
  ),
  Items(
    img: "assets/h1.jpg",
    title: "only healthy food>",
    subTitle: "only healthy food>",
  ),
];
