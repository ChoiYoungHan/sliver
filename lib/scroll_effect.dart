import 'package:flutter/material.dart';

import 'ImageWidget.dart';

class ScrollEffect extends StatelessWidget {
  const ScrollEffect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 다양한 스크롤링 효과를 만들기 위해선, Scaffold 위젯의 body에서 CustomScrollView를 불러와야 한다.
    return Scaffold(
      body: CustomScrollView(
        // slivers는 배열을 전달받고 있다.
        // slivers로 전달되는 배열 내에는 일반 위젯은 올 수 없고, sliver 관련 위젯만 올 수 있다.
        // 그러나 일반 위젯이 필요할 경우에 SlivertoBoxAdapter를 사용하면 일반 위젯도 사용할 수 있다.
        slivers: [
          // sliver란 하나의 스크롤링을 의미
          // slivers 알규먼트를 통해서 여러 개의 스크롤링을 나열해서 구연할 수 있다.
          SliverAppBar(
            title: Text('Sliver appbar'),
            backgroundColor: Colors.blueGrey,
            // AppBar가 최대한 확장되었을 때의 크기를 지정
            expandedHeight: 200,
            leading: Icon(Icons.arrow_back),
            actions: [
              Icon(Icons.settings),
              SizedBox(width: 12)
            ],
            // AppBar에 배경 이미지 추가
            // flexibleSpace의 역할
            // - 확장되었을 경우, 설정된 expandedHeight만큼 늘어났다가, 줄어들었을 때는 타이틀을 간소화
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset('assets/fruits.jpg',
                fit: BoxFit.cover,
              )
            )
          ),
          SliverToBoxAdapter(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount( // 그리드의 레이아웃을 정의
                crossAxisCount: 2 // 수평 방향에 포함될 항목 수
              ),
              primary: false, // 스크롤 뷰의 기본 스크롤 동작을 사용할 건가의 여부 → false
              shrinkWrap: true, // 자식 위젯의 크기에 맞춰서 축소될지 여부 → true / false일 경우 그리드의 크기가 고정되어 지정크기를 유지
              itemCount: 20,
              itemBuilder: (context, index){
                return ImageWidget(index: index);
              }
            )
          )
        ]
      )
    );
  }
}
