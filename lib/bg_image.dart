import 'package:flutter/material.dart';


class BgImage extends StatelessWidget {
  const BgImage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Image.asset("assets/photo1.jpg",
            fit:BoxFit.cover,
            color:Colors.grey.withOpacity(0.8),
            colorBlendMode: BlendMode.darken,
            );
  }
}