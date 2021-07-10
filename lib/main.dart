import 'package:books/core/app_provider.dart';
import 'package:books/core/locator.dart';
import 'package:books/core/viewmodel/app_theme.dart';
import 'package:books/ui/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AppProvider(
      child: ChangeTheme(),
    );
  }
}

class ChangeTheme extends StatelessWidget {
  const ChangeTheme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = Provider.of<AppTheme>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme.getDarkMode() ? ThemeData.dark() : ThemeData.light(),
      title: 'Flutter Demo',
      home: Home(),
    );
  }
}
