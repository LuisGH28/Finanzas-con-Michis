import 'package:flutter/material.dart';
import '../dashboard/main_screen.dart';
import '../goals/goals_screen.dart';
import '../expenses/add_expense_screen.dart';

class HomeContainer extends StatefulWidget {
  const HomeContainer({super.key});

  @override
  State<HomeContainer> createState() => _HomeContainerState();
}

class _HomeContainerState extends State<HomeContainer> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    MainScreen(),
    GoalsScreen(),
    AddExpenseScreen(),
  ];

  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void _onItemTapped(int index) {
    _pageController.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.purple,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(icon: Icon(Icons.flag), label: 'Metas'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Gasto'),
        ],
      ),
    );
  }
}
