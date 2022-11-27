import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class My_Page extends StatefulWidget {
  const My_Page({Key? key}) : super(key: key);

  @override
  State<My_Page> createState() => _My_PageState();
}

class _My_PageState extends State<My_Page> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('my profile'),
    );
  }
}
