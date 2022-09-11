import 'package:bugetin/res/my_colors.dart';
import 'package:bugetin/ui/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: Color(0xffF3F7FF),
      body: IndexedStack(
        children: <Widget>[
          HomeScreen(),
          Container(),
          Container(),
          Container(),
          Container(),
        ],
        index: _currentIndex,
      ),
      bottomNavigationBar: Container(
        height: 80,
        padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30.0),
          child: Container(
            color: Colors.white,
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: _currentIndex,
              backgroundColor: colorScheme.surface,
              selectedItemColor: colorScheme.primary,
              unselectedItemColor: colorScheme.onSurface.withOpacity(.40),
              selectedLabelStyle: textTheme.caption,
              unselectedLabelStyle: textTheme.caption,
              onTap: (value) {
                // ScreenUtils(context).navigateTo(LoginScreen(), replaceScreen: true);
                // Respond to item press.
                setState(() => _currentIndex = value);
              },
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home_filled),
                    label: "Home"
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.money_off),
                    label: "Budget"
                ),
                BottomNavigationBarItem(
                    icon: Container(),
                    label: ""
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.category),
                    label: "Category"
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.pie_chart),
                    label: "Chart"
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: _fab,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  final _fab = FloatingActionButton(
    child: Icon(Icons.add),
    backgroundColor: MyColors.primary,
    onPressed: () {},
  );
}
