import 'package:flutter/material.dart';
import 'package:new_mecanico/controlador/bottom_bar_controller.dart';
import 'package:new_mecanico/widgets/appBar_widget.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

import 'Configuraciones/config_view.dart';

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
      appBar: CustomAppBar(
        'Taller Mecanico',
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ConfigView(),
                ),
              ).then((value) {
                setState(() {});
              });
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: con.vista(),
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
              con.titulos[index],
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: con.sePresiono(isActive, context),
                fontSize: Theme.of(context).textTheme.bodySmall!.fontSize,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
