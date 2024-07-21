import 'package:code_factory_app/screens/navScreens/config_screen.dart';
import 'package:code_factory_app/screens/navScreens/home.dart';
import 'package:code_factory_app/screens/navScreens/profile.dart';
import 'package:flutter/material.dart';



class Navbar extends StatefulWidget {
  const Navbar(this.selectedIndex,{super.key});
  final int selectedIndex;
  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
int currentPageIndex= 0;

  void _navigateToScreen(int index) {
    setState(() {
      currentPageIndex = index;
    });
    switch (index) {
      case 0:
        currentPageIndex = index;
        Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
        break;
      case 1:
        currentPageIndex = index;
        Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfileScreen()));
        break;
      case 2:
        currentPageIndex = index;
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
          indicatorColor: Colors.white,
          backgroundColor: Colors.white,
          onDestinationSelected: _navigateToScreen,
          selectedIndex: widget.selectedIndex,
          destinations:  <Widget>[
            NavigationDestination(
              icon: Icon(Icons.book,color: (widget.selectedIndex == 0)? const Color.fromARGB(255, 227, 86, 42): const Color.fromARGB(255, 190, 186, 179),),
              label: 'Cursos',
            ),
            NavigationDestination(
              icon: Icon(Icons.manage_accounts_rounded,color: (widget.selectedIndex== 1) ? const Color.fromARGB(255, 227, 86, 42): const Color.fromARGB(255, 190, 186, 179),),
              label: 'Perfil',
            ),
            NavigationDestination(
              icon: Icon(Icons.settings,color: (widget.selectedIndex == 2) ? const Color.fromARGB(255, 227, 86, 42): const Color.fromARGB(255, 190, 186, 179),),
              label: 'Configurações',
            ),
          ],
        ),
      ),
    );
  }
}
