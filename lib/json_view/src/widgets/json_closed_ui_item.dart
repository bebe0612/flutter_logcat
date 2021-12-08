import 'package:flutter/material.dart';

import '../src.dart';

class ClosedJsonObjectItem extends StatelessWidget {
  const ClosedJsonObjectItem({
    Key? key,
    this.keyName,
    required this.isList,
    required this.jsonViewTheme,
    this.type,
    this.count,
  })  : assert(!isList || (isList && type != null && count != null)),
        super(key: key);

  final bool isList;
  final String? keyName;
  final String? type;
  final int? count;
  final JsonViewTheme jsonViewTheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (keyName != null)
          Text(
            keyName ?? '',
            style: jsonViewTheme.keyStyle,
          ),
        if (keyName != null) jsonViewTheme.separator,
        if (isList)
          Text(
            'Array<$type>[${count ?? 0}]',
            style: jsonViewTheme.keyStyle,
          ),
        if (!isList)
          Text(
            'Object',
            style: jsonViewTheme.keyStyle,
          ),
      ],
    );
  }
}
