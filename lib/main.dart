import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:new_sqflite/provider/product_provider.dart';
import 'package:new_sqflite/provider/theme_provider.dart';
import 'package:new_sqflite/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();

    Future.microtask(() =>
        Provider.of<ProductProvider>(context, listen: false)
            .fetchProducts());
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ProductProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ThemeProvider(),
        ),
      ],
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, _) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',

            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
                seedColor: Colors.deepPurple,
              ),
              useMaterial3: true,
            ),

            darkTheme: ThemeData.dark(useMaterial3: true),

            themeMode: themeProvider.themeMode,

            home: const Home(),
          );
        },
      ),
    );
  }
}