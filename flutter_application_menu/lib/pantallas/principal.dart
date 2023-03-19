import 'package:flutter/material.dart';
import 'package:flutter_application_menu/pantallas/menu/Recipes.dart';
import 'package:flutter_application_menu/pantallas/menu/groceries.dart';
import 'package:flutter_application_menu/pantallas/menu/plans.dart';
import 'package:flutter_application_menu/pantallas/menu/account.dart';
import 'package:flutter_application_menu/temas/colores.dart';

class Principal extends StatefulWidget {
  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  int _seleccionado = 0;
  void _BarraNavega(int index) {
    setState(() {
      _seleccionado = index;
    });
  }

  final List<Widget> _paginas = [Recipes(), Plans(), Groceries(), Account()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 3, 93, 134),
      body: _paginas[_seleccionado],
      //Barra inferior con opciones de navegación
      bottomNavigationBar:
          //Propiedad para que los botones del navigationBar se autoAjusten
          BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: _seleccionado,
              onTap: _BarraNavega,
              items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.local_restaurant), label: 'Recipes'),
            BottomNavigationBarItem(
                icon: Icon(Icons.format_list_bulleted), label: 'Plans'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: 'Groceries'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: 'Account'),
          ]),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
