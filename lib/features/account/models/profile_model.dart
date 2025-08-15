class ProfileModel {
  final String icon;
  final String title;

  ProfileModel({required this.icon, required this.title});
}

List<ProfileModel> profileCats = [
  ProfileModel(
    icon: "assets/icons/profile_icons/Orders icon.png",
    title: "Orders",
  ),
  ProfileModel(
    icon: "assets/icons/profile_icons/My Details icon.png",
    title: "My Details",
  ),
  ProfileModel(
    icon: "assets/icons/profile_icons/Delicery address.png",
    title: "Delivery Address",
  ),
  ProfileModel(
    icon: "assets/icons/profile_icons/Vector icon.png",
    title: "Payment Methods",
  ),
  ProfileModel(
    icon: "assets/icons/profile_icons/Promo Cord icon.png",
    title: "Promo Cord",
  ),
  ProfileModel(
    icon: "assets/icons/profile_icons/Bell icon.png",
    title: "Notifecations",
  ),
  ProfileModel(icon: "assets/icons/profile_icons/help icon.png", title: "Help"),
  ProfileModel(
    icon: "assets/icons/profile_icons/about icon.png",
    title: "About",
  ),
];
