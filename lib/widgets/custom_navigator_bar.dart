import 'package:flutter/material.dart';
import 'package:maps_qr/providers/ui_provider.dart';
import 'package:provider/provider.dart';

class CustomNavigatorBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);
    final currentIndex = uiProvider.SelectedMenuOption ;

    return BottomNavigationBar(
      onTap: (int i) => uiProvider.selectedMenuOption = i,
      elevation: 0,
      currentIndex: currentIndex,
      items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
          icon: Icon(Icons.map), label: "mapas"),
      BottomNavigationBarItem(
          icon: Icon(Icons.compass_calibration), label: "direcciones")
    ]);
  }
}
