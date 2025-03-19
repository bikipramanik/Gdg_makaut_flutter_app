final List<String> announcementsList = [
  "Events 2",
  "Events 1",
  "Events 3",
  "Events 4",
];
final List<String> sponsersList = [
  "lib/assets/sponsers_images/Gucci.jpeg",
  "lib/assets/sponsers_images/meta.png",
  "lib/assets/sponsers_images/Nvidiafeature1.png",
  "lib/assets/sponsers_images/rockstar.jpeg",
  "lib/assets/sponsers_images/Samsung.png",
  "lib/assets/sponsers_images/Tesla.jpg",
];
final List<String> communityPartnerList = [
  "lib/assets/community/amazon.png",
  "lib/assets/community/cocacola.png",
  "lib/assets/community/mustang.jpg",
  "lib/assets/community/nike.png",
  "lib/assets/community/starbucks.jpg",
  "lib/assets/community/zara.jpg",
];

class QuoteDetails {
  final String image;
  final String name;
  final String description;
  final String quote;

  const QuoteDetails({
    required this.description,
    required this.image,
    required this.name,
    required this.quote,
  });
}