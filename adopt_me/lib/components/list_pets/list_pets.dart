import 'package:adoptme/components/constants.dart';
import 'package:adoptme/components/list_pets/components/list_pet_card.dart';
import 'package:adoptme/models/pets_model.dart';
import 'package:flutter/material.dart';

class ListPetWidget extends StatefulWidget {
  const ListPetWidget({Key? key}) : super(key: key);

  @override
  State<ListPetWidget> createState() => _ListPetWidgetState();
}

class _ListPetWidgetState extends State<ListPetWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: ListView.separated(
        separatorBuilder: (BuildContext context, int index) =>
            const Divider(color: cBackgroundColor),
        scrollDirection: Axis.vertical,
        itemCount: petsList.length,
        itemBuilder: (context, index) {
          final name = petsList[index].name;
          final species = petsList[index].species;
          final race = petsList[index].race;
          final sex = petsList[index].sex;
          final age = petsList[index].age;
          final location = petsList[index].location;
          final favorite = petsList[index].favorite;
          final profilePic = petsList[index].profilePic;
          final pColor = petsList[index].pColor;

          return ListPetCard(
            petName: name,
            petSpecies: species,
            petRace: race,
            petSex: sex,
            petAge: age,
            petLocation: location,
            petFavorite: favorite,
            petProfilePic: profilePic,
            petColor: pColor,
          );
        },
      ),
    );
  }
}
