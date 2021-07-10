import 'package:books/core/locator.dart';
import 'package:books/core/viewmodel/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppProvider extends StatelessWidget {
  final Widget child;

  const AppProvider({required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppTheme>(
            create: (_) => locator<AppTheme>()),
      ],
      child: child,
    );
  }
}
