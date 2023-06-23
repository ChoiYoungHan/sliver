import 'package:flutter/material.dart';
import 'package:sliver/pages/home.dart';
import 'package:sliver/pages/search.dart';
import 'package:sliver/pages/settings.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        // 어떤 destination이 선택되었는지 결정해주는 selectedIndex
        selectedIndex: selectedIndex,
        // onDestinationSelected는 한 destination이 선택되었을 때 호출되며, selectedIndex의 값을 업데이트 해줌, NavigationBar가 리빌드됨
        onDestinationSelected: (value) => setState(() {
          selectedIndex = value;
        }),
        destinations: [ // NavigationBar에서 사용하는 아이콘 메뉴
          NavigationDestination(
            icon: Icon(Icons.home),
            label: "Home",
            selectedIcon: Icon(
              Icons.home,
              color: Theme.of(context).colorScheme.onSecondaryContainer,
            )
          ),
          NavigationDestination(
              icon: Icon(Icons.search),
              label: "Search",
              selectedIcon: Icon(
                Icons.search,
                color: Theme.of(context).colorScheme.onSecondaryContainer,
              )
          ),
          NavigationDestination(
              icon: Icon(Icons.settings),
              label: "Settings",
              selectedIcon: Icon(
                Icons.settings,
                color: Theme.of(context).colorScheme.onSecondaryContainer,
              )
          )
        ],
        animationDuration: Duration(microseconds: 500),
      ),
      appBar: AppBar(
        title: Text('Navigation Bar')
      ),
      body: Center(
        child: IndexedStack( // index에 근거하여 한 번에 하나씩 리스트 내에 있는 child 위젯을 보여주는 기능을 함
          index: selectedIndex,
          children: [
            HomePage(),
            SearchPage(),
            SettingPage()
          ]
        ),
      ),
    );
  }
}
