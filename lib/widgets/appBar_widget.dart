import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String titulo;
  final bool? centerTitle;
  final List<Widget>? actions;
  final ValueChanged? onBack;

  const CustomAppBar(this.titulo,
      {super.key, this.centerTitle, this.actions, this.onBack});

  @override
  State<CustomAppBar> createState() => CustomAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(widget.titulo),
      centerTitle: widget.centerTitle ?? false,
      actions: widget.actions,
    );
  }
}
