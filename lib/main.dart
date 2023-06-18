import 'package:flutter/material.dart';
import 'package:sliver/scroll_effect.dart';

void main() {
  runApp(const MyApp());
}
/* Commit 1
 유튜버 코딩쉐프님의 영상을 보고 학습한 코드
 - https://www.youtube.com/watch?v=YYEtWHGW894

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

*/

/* Commit 2
  유튜버 코딩쉐프님의 영상을 보고 학습한 코드
  - https://www.youtube.com/watch?v=C06hx5lRt2U

  Adaptable Design System
  - 개인적인 취향을 보다 강조하고, 개발자가 보다 더 유연하고 편하게 아름다운 앱을 만들 수 있음

  Color Scheme
  - 일련의 색상이나 색조를 조합하여 디자인에 사용
  - 색상 구성표
  - 주요 색상, 보조 색상, 강조 색상

  Baseline color Scheme
  - 사용자가 선택한 하나의 소스 컬러를 기반으로 생성
  - 소스 컬러를 바탕으로 색상, 채도, 명도가 조절되어 목적에 맞게 다섯 가지의 Key Color가 만들어짐
  - 가장 어두운 색부터 밝은 색까지 13단계로 확장되어, tonal palette가 만들어짐

  Color rolls
  - 각 역할에 맞게 UI 요소들의 컬러톤이 배정이 되며, 이에 근거하여 색상들이 자동으로 적용
  - Light Theme과 Dart Theme에 대한 색상톤도 배정

  Primary Color
  - Floating Action Button이나 주요 버튼 배경색 또는 활성화된 버튼 등에 사용

  Secondary Color
  - 데이터를 필터링 할 때 사용되는 작은 버튼 등 앱에서 덜 부각되는 UI요소에 사용

  그 외에는 m3 홈페이지에서 확인가능
  - https://m3.material.io/styles/color/the-color-system/color-roles

 */

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          primary: Colors.deepOrange,
          primaryContainer: Colors.blueGrey,
          brightness: Brightness.light
        ),
        useMaterial3: true // M3 디자인을 사용한다는 것을 알 수 있음
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark
      ),
      themeMode: ThemeMode.system, // ThemeMode는 system에 따르라고 설정 (Light모드면 LightTheme, Dark모드면 DarkTheme)
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
