import 'package:adoptme/components/constants.dart';
import 'package:adoptme/components/custom_icons_icons.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: cScaffoldColor,
      leading: Padding(
        padding: const EdgeInsets.only(left: 4),
        child: IconButton(
          iconSize: 28,
          onPressed: () => Scaffold.of(context).openDrawer(),
          icon: const Icon(
            CustomIcons.menu,
            color: Colors.black,
          ),
        ),
      ),
      title: Center(
        child: Column(
          children: const [
            Text(
              'Location',
              style: TextStyle(
                color: cGray2,
                fontSize: 12,
              ),
            ),
            Text(
              'Cameron St., Boston',
              style: TextStyle(
                color: cGray1,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
      // ignore: prefer_const_literals_to_create_immutables
      actions: [
        const Padding(
          padding: EdgeInsets.only(right: 4),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/profile.png'),
            radius: 44,
          ),
        ),
      ],
    );
  }
}
