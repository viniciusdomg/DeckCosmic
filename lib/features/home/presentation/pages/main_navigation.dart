import 'package:deck_cosmic/features/battle/presentation/pages/battlefield.dart';
import 'package:deck_cosmic/features/daily_card/presentation/pages/hero_day.dart';
import 'package:deck_cosmic/features/heroes/presentation/pages/heroes_list.dart';
import 'package:deck_cosmic/features/my_cards/presentation/pages/my_heroes_list.dart';
import 'package:flutter/material.dart';

class MainNavigation extends StatefulWidget {
  final int initialIndex;
  const MainNavigation({super.key, required this.initialIndex});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  late int _selectedIndex;

  final List<Widget> _pages = [
    const HeroDay(),
    const Battlefield(),
    const HeroesList(),
    const MyHeroesList()
  ];

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialIndex;
  }

  void onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
