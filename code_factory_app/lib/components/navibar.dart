import 'package:flutter/material.dart';

class navibar extends StatefulWidget {
  const navibar({super.key});

  @override
  State<navibar> createState() => _navibarState();
}

class _navibarState extends State<navibar> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10)
      ]),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16), topRight: Radius.circular(16),),
        child:
        NavigationBar(
          shadowColor: Colors.black,
          backgroundColor: Colors.white,
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          selectedIndex: currentPageIndex,
          destinations: const <Widget>[
            NavigationDestination(
//selectedIcon: Icon(Icons.book),
              icon: Icon(Icons.book),
              label: 'Cursos',
            ),
            NavigationDestination(
              icon: Badge(child: Icon(Icons.manage_accounts_rounded)),
              label: 'Perfil',
            ),
            NavigationDestination(
              icon: Badge(
                child: Icon(Icons.settings),
              ),
              label: 'Configurações',
            ),
          ],
        ),
      ),
    );
  }
}
