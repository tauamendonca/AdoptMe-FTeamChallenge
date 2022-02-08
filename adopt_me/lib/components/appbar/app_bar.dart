import 'package:adoptme/components/constants.dart';
import 'package:adoptme/components/custom_icons_icons.dart';
import 'package:adoptme/models/user_model.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(90);
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: cScaffoldColor,

      //Menu da appbar
      leading: Padding(
        padding: const EdgeInsets.only(left: 15, top: 12),
        child: IconButton(
          iconSize: 30,
          onPressed: () => {},
          icon: const Icon(
            CustomIcons.appbar_menu,
            color: cGray1,
          ),
        ),
      ),

      //texto central
      title: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Column(
            children: [
              const Text('Location', style: cBaseTextStyle),
              Text(
                '${userprofile.street}, ${userprofile.city}',
                style: cUserLocalStyle,
              ),
            ],
          ),
        ),
      ),

      // ignore: prefer_const_literals_to_create_immutables

      //foto de perfil do usuário
      actions: [
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            // ignore: prefer_const_constructors
            padding: EdgeInsets.only(right: 25, top: 15),
            child: CircleAvatar(
              backgroundImage: AssetImage(userprofile.picture),
              radius: 21,
            ),
          ),
        ),
      ],
    );
  }
}
