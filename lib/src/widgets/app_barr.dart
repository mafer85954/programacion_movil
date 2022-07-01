import 'package:flutter/material.dart';
import 'package:veterinaria/src/styles/colors/colors_views.dart';

class AppBarTiendaWidget extends StatelessWidget with PreferredSizeWidget {
  const AppBarTiendaWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorSelect.appBar,
      automaticallyImplyLeading: true,
      leading: const Icon(Icons.arrow_back, color: ColorSelect.paginatorNext),
      title: const Text("Tienda"),
      actions: const [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.shopping_bag_outlined, size: 35),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.notifications_none_outlined, size: 35),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.person_outline_outlined, size: 35),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
