import 'package:flutter/material.dart';
import 'package:flutter_logcat/json_view/src/builders/builders.dart';

import '../src.dart';

class JsonListItem extends StatelessWidget {
  JsonListItem({
    Key? key,
    required this.value,
    required this.jsonViewTheme,
  })  : _commonBuilder = CommonJsonViewBuilder(
          value,
          jsonViewTheme: jsonViewTheme,
        ),
        super(key: key);

  final dynamic value;
  final JsonViewTheme jsonViewTheme;
  final CommonJsonViewBuilder _commonBuilder;

  @override
  Widget build(BuildContext context) {
    return _commonBuilder.build();
  }
}
