import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'intropage/WellcomeScreen.dart';
import 'provider/userinfoprovider.dart';


void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => GenderProvider()),

    ],
    child: const MyApp(),)
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: WellcomeScreen(),
    );
  }
}

