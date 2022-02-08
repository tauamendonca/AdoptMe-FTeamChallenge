class Pet {
  final String name, species, race, sex, age;
  final String profilePic;
  final String pColor;
  final double location;
  final bool favorite;
  final String? aboutText;
  final List<String>? albumPics;

  Pet({
    required this.name,
    required this.species,
    required this.race,
    required this.sex,
    required this.age,
    required this.location,
    required this.favorite,
    required this.profilePic,
    required this.pColor,
    this.aboutText,
    this.albumPics,
  });
}

List<Pet> petsList = [
  Pet(
      name: 'Ralf',
      species: 'dog',
      race: 'Boxer',
      sex: 'Male',
      age: '2 years old',
      location: 2.2,
      favorite: true,
      profilePic: 'assets/images/dog1.png',
      pColor: '0xFFfee46b'),
  Pet(
      name: 'Bob',
      species: 'dog',
      race: 'Bernese Mountain Dog',
      sex: 'Male',
      age: '4 months old',
      location: 1.4,
      favorite: false,
      profilePic: 'assets/images/dog2.png',
      pColor: '0xFF8ad3d1'),
  Pet(
      name: 'Daisy',
      species: 'dog',
      race: 'Golden Retriever',
      sex: 'Female',
      age: '3 years old',
      location: 2.7,
      favorite: false,
      profilePic: 'assets/images/dog3.png',
      pColor: '0xFF7fc6e4'),
  Pet(
      name: 'Tobby',
      species: 'dog',
      race: 'Border Collie',
      sex: 'Male',
      age: '1 year old',
      location: 3.2,
      favorite: false,
      profilePic: 'assets/images/dog4.png',
      pColor: '0xFFffaa79'),
  Pet(
      name: 'Mexico',
      species: 'dog',
      race: 'Chihuahua',
      sex: 'Male',
      age: '6 months old',
      location: 2.2,
      favorite: false,
      profilePic: 'assets/images/dog5.png',
      pColor: '0xFFb9d89e'),
  Pet(
      name: 'Berta',
      species: 'dog',
      race: 'Daschund',
      sex: 'Female',
      age: '6 years old',
      location: 2.0,
      favorite: true,
      profilePic: 'assets/images/dog6.png',
      pColor: '0xFFa784ff'),
];
