class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent({
    required this.image,
    required this.title,
    required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title: 'Best Prices & Deals',
      image: 'assets/images/Frame.png',
      discription: "Find your favorite Meals at the best prices with exclusive deals only on aliments app."
  ),
  UnbordingContent(
      title: 'Track your Orders',
      image: 'assets/images/Frame 2.png',
      discription: "Track your orders in realtime from the app"
  ),
  UnbordingContent(
      title: 'Free and Fast Delivery',
      image: 'assets/images/Group 34.png',
      discription: "Free and fast delivery for all meals above ₹100."
  ),
];