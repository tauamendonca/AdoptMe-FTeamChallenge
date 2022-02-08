class Userprofile {
  final String street, city;
  final String picture;

  Userprofile({
    required this.picture,
    required this.street,
    required this.city,
  });
}

var userprofile = Userprofile(
    picture: 'assets/images/profile.png',
    street: 'Cameron St.',
    city: 'Boston');
