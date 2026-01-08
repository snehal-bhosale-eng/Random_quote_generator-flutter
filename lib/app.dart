import 'package:flutter/material.dart';
import 'package:random_quote_generator/screens/random_quote.dart';

class QuoteApp extends StatelessWidget{
  const QuoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: "random quot generator",
    debugShowCheckedModeBanner: false,
    home:  const QuoteScreens()
    
  );
  }

}