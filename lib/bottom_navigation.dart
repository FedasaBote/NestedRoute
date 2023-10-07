import 'package:flutter/material.dart';
import 'tab_item.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    super.key,
    required this.currentTab,
    required this.onSelectTab,
  });
  final TabItem currentTab;
  final ValueChanged<TabItem> onSelectTab;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      items: [
        _buildItem(TabItem.red),
        _buildItem(TabItem.green),
        _buildItem(TabItem.blue),
      ],
      onTap: (index) => onSelectTab(TabItem.values[index]),
      currentIndex: currentTab.index,
      selectedItemColor: currentTab.color,
    );
  }

  BottomNavigationBarItem _buildItem(TabItem tabItem) {
    return BottomNavigationBarItem(
      icon: Icon(
        Icons.layers,
        color: _colorTabMatching(tabItem),
      ),
      label: tabItem.name,
    );
  }

  Color _colorTabMatching(TabItem tabItem) {
    return currentTab == tabItem ? tabItem.color : Colors.grey;
  }
}
