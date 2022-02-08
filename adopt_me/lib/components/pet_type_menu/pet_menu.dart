import 'package:adoptme/components/constants.dart';
import 'package:adoptme/components/custom_icons_icons.dart';
import 'package:adoptme/components/pet_type_menu/components/pet_menu_icons.dart';
import 'package:adoptme/components/pet_type_menu/components/switch_menu_icon.dart';
import 'package:flutter/material.dart';

class PetMenu extends StatelessWidget {
  const PetMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      //menu toggle-switch
      const SwitchMenu(
        switchMenuIcon: CustomIcons.switch_icon,
        switchMenuIconColor: cGray3,
      ),

      //Divisor de espaço
      const SizedBox(width: 15),

      //Lista de espécies de pet
      Expanded(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.only(left: 0),
          scrollDirection: Axis.horizontal,
          children: const [
            PetMenuIcon(
              petMenuIcon: CustomIcons.dog,
              petMenuIconColor: cSecondaryColor,
              petMenuTitle: 'Dogs',
              petMenuBackground: cPrimaryColor,
              petMenuFontColor: cSecondaryColor,
            ),
            SizedBox(width: 15),
            PetMenuIcon(
              petMenuIcon: CustomIcons.cat,
              petMenuIconColor: cGray3,
              petMenuTitle: ' Cats',
              petMenuBackground: cSecondaryColor,
              petMenuFontColor: cGray1,
            ),
            SizedBox(width: 15),
            PetMenuIcon(
              petMenuIcon: CustomIcons.bird,
              petMenuIconColor: cGray3,
              petMenuTitle: 'Birds',
              petMenuBackground: cSecondaryColor,
              petMenuFontColor: cGray1,
            ),
          ],
        ),
      ),
    ]);
  }
}
