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
    const HeroesList(),
    const HeroDay(),
    const MyHeroesList(),
    const Battlefield()
  ];

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialIndex;
  }

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
         child: Text("DeckCosmic"),
        ),
      ),
      
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.shield),
            label: 'Heróis',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Card Diário',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.style),
            label: 'Minhas Cartas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bolt),
            label: 'Batalhar',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
