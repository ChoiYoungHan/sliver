import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 150,
      child: Card(
        child: Image.network(
          // unsplash 사이트에서 무료로 이미지를 불러와 사용할 수 있다.
          'https://source.unsplash.com/random?Korea=$index',
          fit: BoxFit.cover
        )
      )
    );
  }
}
