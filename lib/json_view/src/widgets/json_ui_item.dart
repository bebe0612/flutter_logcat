import 'package:flutter/material.dart';
import 'package:flutter_logcat/json_view/src/builders/builders.dart';
import 'package:flutter_logcat/json_view/src/builders/primitive_builders/map_builder.dart';

import '../src.dart';

class JsonItem extends StatelessWidget {
  JsonItem({
    Key? key,
    required this.entry,
    required this.jsonViewTheme,
  })  : _commonBuilder = CommonJsonViewBuilder(
          entry.value,
          jsonViewTheme: jsonViewTheme,
        ),
        super(key: key);

  final MapEntry<String, dynamic> entry;
  final JsonViewTheme jsonViewTheme;
  final CommonJsonViewBuilder _commonBuilder;

  @override
  Widget build(BuildContext context) {
    final valueWidget = _commonBuilder.build();
    if (valueWidget is JsonMapBuilder) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(entry.key, style: jsonViewTheme.keyStyle),
              jsonViewTheme.separator,
            ],
          ),
          valueWidget,
        ],
      );
    }
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          entry.key,
          style: jsonViewTheme.keyStyle,
        ),
        jsonViewTheme.separator,
        Expanded(
          child: valueWidget,
        )
        // Expanded(
        //   child: valueWidget,
        // )
      ],
    );
  }
}
