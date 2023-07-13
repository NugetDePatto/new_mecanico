import 'package:flutter/material.dart';
import 'package:new_mecanico/controlador/bottom_bar_controller.dart';
import 'package:new_mecanico/utils/appBar_utils.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class BottomBarView extends StatefulWidget {
  const BottomBarView({super.key});

  @override
  State<BottomBarView> createState() => _BottomBarViewState();
}

class _BottomBarViewState extends State<BottomBarView> {
  BottomBarController con = BottomBarController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarUtil('Taller Mecanico', key: GlobalKey<AppBarUtilState>()),
      body: con.vistas[con.index],
      floatingActionButton: FloatingActionButton.large(
        shape: const StadiumBorder(),
        onPressed: () {
          setState(() {});
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(con.iconos[4]),
            const Text('Reportes'),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        height: 80,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        backgroundColor: Theme.of(context).primaryColor,
        itemCount: 4,
        activeIndex: con.index,
        onTap: (index) {
          setState(() {
            con.index = index;
          });
        },
        tabBuilder: (index, isActive) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              con.iconos[index],
              color: con.sePresiono(isActive, context),
            ),
            Text(
              con.nombres[index],
              style: TextStyle(
                color: con.sePresiono(isActive, context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}