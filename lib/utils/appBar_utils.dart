import 'package:flutter/material.dart';

class AppBarUtil extends StatefulWidget implements PreferredSizeWidget {
  final String titulo;
  final bool? centerTitle;
  final List<Widget>? actions;
  final ValueChanged? onBack;

  const AppBarUtil(this.titulo,
      {super.key, this.centerTitle, this.actions, this.onBack});

  @override
  State<AppBarUtil> createState() => AppBarUtilState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class AppBarUtilState extends State<AppBarUtil> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(widget.titulo),
      centerTitle: widget.centerTitle ?? false,
      actions: widget.actions,
    );
  }
}
