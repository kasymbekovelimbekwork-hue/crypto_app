import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 21, 21, 21),
        appBarTheme: AppBarTheme(
          backgroundColor: const Color.fromARGB(255, 62, 59, 255),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        dividerColor: Colors.white30,
        listTileTheme: const ListTileThemeData(
          iconColor: Colors.white,
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
          bodyMedium: TextStyle(
            color: Colors.white70,
            fontSize: 16,
            height: 1.5,
          ),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Crypto App'),
        backgroundColor: theme.appBarTheme.backgroundColor,
        shape: theme.appBarTheme.shape,
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) =>
            Divider(color: theme.dividerColor, height: 1),
        itemCount: 10,
        itemBuilder: (context, i) => ListTile(
          leading: SvgPicture.asset(
            'assets/svg/bitcoin-logo.svg',
            width: 30,
            height: 30,
          ),
          title: Text('Bitcoin', style: theme.textTheme.bodyLarge),
          subtitle: Text('\$50,000', style: theme.textTheme.bodyMedium),
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
      ),
    );
  }
}
