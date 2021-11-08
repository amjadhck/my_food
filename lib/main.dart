import 'package:flutter/material.dart';
import 'package:my_food/screens/category_meals.dart';
import 'package:my_food/screens/meal_details.dart';
import 'package:my_food/screens/tabs_screen.dart';
import 'package:my_food/theme/theme_constats.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
  static _MyAppState? of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.light;

  void changeTheme(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Food',
      themeMode: _themeMode,
      theme: lightTheme,
      darkTheme: darkTheme,

      //home: CategoriesScreen(),
      routes: {
        '/': (context) => const TabsScreen(),
        CategoryMealsScreen.id: (context) => CategoryMealsScreen(),
        MealDetailScreen.id: (context) => MealDetailScreen(),
      },
    );
  }
}

      // theme: ThemeData(
      //   colorScheme:
      //       ColorScheme.fromSwatch().copyWith(
      //     primary: Colors.pink,
      //     secondary: Colors.black,
      //     background: Colors.pink.shade500,
      //     //onPrimary: Colors.red,
      //     onSecondary: Colors.amber,
      //     onBackground: Colors.blueGrey,
      //   ),
      //   canvasColor: const Color.fromRGBO(255, 254, 229, 1),
      //   fontFamily: 'Raleway',
      //   textTheme: ThemeData.light().textTheme.copyWith(
      //         bodyText1: const TextStyle(
      //           color: Colors.white,
      //           // color: Color.fromRGBO(20, 51, 51, 1),
      //         ),
      //         bodyText2: const TextStyle(
      //           color: Color.fromRGBO(20, 51, 51, 1),
      //         ),
      //         caption: const TextStyle(
      //           fontSize: 23,
      //           fontFamily: 'RobotoCondensed',
      //           fontWeight: FontWeight.bold,
      //         ),
      //       ),
      // ),