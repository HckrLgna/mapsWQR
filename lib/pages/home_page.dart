import 'package:flutter/material.dart';
import 'package:maps_qr/pages/direcciones_page.dart';
import 'package:maps_qr/pages/mapas_page.dart';
import 'package:maps_qr/providers/ui_provider.dart';
import 'package:maps_qr/widgets/custom_navigator_bar.dart';
import 'package:maps_qr/widgets/scan_buttom.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Historial"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.delete_forever))
        ],
      ),
      body: const HomePageBody(),
      bottomNavigationBar: CustomNavigatorBar(),
      floatingActionButton: ScanButtom(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    final iuProvider = Provider.of<UiProvider>(context);
    final currentIndex = iuProvider.SelectedMenuOption;
    switch (currentIndex){
      case 0:
      return MapasPage();
      case 1: 
      return DireccionesPage();
      default:
      return MapasPage();
    }
  }
}