import 'package:code_factory_app/screens/navScreens/config_screen.dart';
import 'package:code_factory_app/screens/navScreens/home.dart';
import 'package:code_factory_app/screens/navScreens/profile.dart';
import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int currentPageIndex = 0;

  void _navigateToScreen(int index) {
    setState(() {
      currentPageIndex = index;
    });
    switch (index) {
      case 0:
        Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
        break;
      case 1:
        Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfileScreen()));
        break;
      case 2:
        Navigator.push(context, MaterialPageRoute(builder: (context) => const ConfigScreen()));
        break;
    }
  }

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
          onDestinationSelected: _navigateToScreen,
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
