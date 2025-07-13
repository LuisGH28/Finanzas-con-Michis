import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'example_provider.dart';

final globalProviders = [
  ChangeNotifierProvider(create: (_) => ExampleProvider()),
];
