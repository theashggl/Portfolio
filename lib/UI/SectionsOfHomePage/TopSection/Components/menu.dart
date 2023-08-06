import 'dart:core';
import 'package:flutter/material.dart';
import 'package:portfolio/Data/menu_functionality.dart';

@visibleForTesting
class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  final MenuFunctionality _menuFunctionality = MenuFunctionality();
  int selectedIndex = 0;
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    debugCheckHasMaterial(
      context,
    ); //check because inkwell requires material ancestor to work
    return Positioned(
      bottom: 0,
      child: Column(
        children: [
          Container(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height / 10,
              minWidth: MediaQuery.of(context).size.width / 1.7,
            ),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 50),
                  blurRadius: 40,
                  color: const Color(0xFF0700B1).withOpacity(0.3),
                ),
              ],
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(5),
                topRight: Radius.circular(5),
              ),
              color: Colors.white,
            ),
            child: Row(
              key: const Key('MenuRowKey'),
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List<Widget>.generate(
                _menuFunctionality.menuItems.length,
                (index) => Material(
                  color: Colors.white.withOpacity(0.0),
                  child: InkWell(
                    onTap: () {},
                    onHover: (hovering) {
                      setState(() {
                        isHovering = hovering;
                        selectedIndex = index;
                      });
                    },
                    child: Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.center,
                      children: [
                        Text(_menuFunctionality.menuItems[index]),
                        Positioned(
                          bottom: -19,
                          child: Opacity(
                            opacity: isHovering
                                ? (index == selectedIndex ? 1 : 0)
                                : 0,
                            child: Image.asset(
                              'assets/HoverOnMenu.png',
                              scale: 2,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                growable: false,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
