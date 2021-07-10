import 'package:books/core/viewmodel/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final appTheme = Provider.of<AppTheme>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                if (appTheme.isDarkMode)
                  appTheme.changeDarkMode(false);
                else
                  appTheme.changeDarkMode(true);
              },
              icon: Icon(
                  appTheme.isDarkMode ? Icons.light_mode : Icons.dark_mode))
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('$index'),
          );
        },
      ),
    );
  }
}
