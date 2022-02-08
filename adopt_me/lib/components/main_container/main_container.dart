// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:adoptme/components/constants.dart';
import 'package:adoptme/components/list_pets/list_pets.dart';
import 'package:adoptme/components/pet_type_menu/pet_menu.dart';
import 'package:flutter/material.dart';

class MainContainerWidget extends StatelessWidget {
  const MainContainerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //tamanho e decoração do container principal da main screen
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: cBackgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25.0),
          topRight: Radius.circular(25.0),
        ),
      ),

      //elementos da main screen
      child: Padding(
        padding: EdgeInsets.all(25),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: PetMenu(),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 11,
              child: ListPetWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
