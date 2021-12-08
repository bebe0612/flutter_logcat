import 'package:flutter/material.dart';

import '../src.dart';

abstract class JsonViewBuilder {
  JsonViewTheme? get jsonViewTheme;
  Widget build();
}
