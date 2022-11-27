import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BarItempage extends StatefulWidget {
  const BarItempage({Key? key}) : super(key: key);

  @override
  State<BarItempage> createState() => _BarItempageState();
}

class _BarItempageState extends State<BarItempage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('item page'),
    );
  }
}
