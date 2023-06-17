import 'package:flutter/material.dart';
import 'package:sliver/scroll_effect.dart';

void main() {
  runApp(const MyApp());
}
/*
 Flutter 공식 문서
 - sliver란 스크롤 가능한 영역의 일부분

 코딩셰프
 - Sliver is a slice of something that scrolls (스크롤 되는 영역을 이루는 조각 하나하나)
 - 아이템 번호 하나하나를 Sliver라 할 수 있다.
 - Slivers라고 하면 스크린 상에서 스크롤되는 영역을 의미 (영역 전체)
 - ListView나 GridView도 sliver로 이루어져 있다.
 - ListView가 곧 sliverList이고 sliverList가 곧 ListView이다.
 - 하나의 차이가 있다면, sliverList와 sliverGrid는 Widget이 아니다.
 - ListView, GridView 위젯은 sliverList를 한데 묶어서 리스트로 만들어둔 것이다.

 Sliver를 어려워 하는 이유
 1. 영어 단어 자체로서의 의미
 2. ListView vs sliverList / GridView vs sliverGrid

 CustomScrollView 위젯을 왜 사용하는가?

 sliver protocol
 - 부모로부터 자식들은 sliver constraints(scroll, axis, scrollOffset, paintExtent 등) sliver를 그려주기 위한 정보

 render sliver의 역할
 - Lazily load sliver를 해줌
 - 스크롤 영역에서 우리가 볼 수 있는 만큼의 sliver들만 그때그때 그려준다.
 - ListView나 GridView도 뒷단에서는 render sliver를 사용함

 ListView나 GridView를 동시에 사용하고 싶거나, 스크롤링 이펙트를 사용하고 싶다면 CustomView위젯을 사용함
 - 곧바로 slivers를 전달하여 다양한 스크롤링 이펙트를 만들 수 있게 해준다.

 * */

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 오른쪽 상단의 리본 띠 제거
      home: SliverTest()
    );
  }
}

class SliverTest extends StatefulWidget {
  const SliverTest({Key? key}) : super(key: key);

  @override
  State<SliverTest> createState() => _SliverTestState();
}

class _SliverTestState extends State<SliverTest> {
  @override
  Widget build(BuildContext context) {
    return ScrollEffect();
  }
}
