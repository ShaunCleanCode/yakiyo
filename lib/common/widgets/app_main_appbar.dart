import 'package:flutter/material.dart';
import 'package:yakiyo/core/constants/assets_constants.dart';
import 'package:yakiyo/core/constants/routes_constants.dart';

class AppMainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AppMainAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(
          AssetsConstants.appLogoPng,
          width: 32,
          height: 32,
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.person_outline),
          onPressed: () {
            Navigator.pushNamed(context, RoutesConstants.settings);
          },
        ),
      ],
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: false,
      title: null,
    );
  }
}
