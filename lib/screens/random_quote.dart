import 'package:flutter/material.dart';
import 'dart:math';

class QuoteScreens extends StatefulWidget {
  const QuoteScreens({super.key});

  @override
  State<QuoteScreens> createState() => _QuoteScreensState();
}

class _QuoteScreensState extends State<QuoteScreens> {


  int currentIndex=0;
  
final List<Map<String, String>> quotes = [{
  "quote":"Life is short, so enjoy it to the fullest.",
   "author":"John Walters",
},
 {
  "quote":"Tell them winter came for House Frey ",
  "author":"Arya Stark",
  },
  {
   "quote":"There is only one war that matters: the Great War... and it is here",
  "author":"Jon Snow",
  },
  
  {                                  
 "quote":"Never forget what you are, for surely the world will not. ",
  "author":"Tyrion Lannister",
  },
  {
   "quote":"the things I do for love",
  "author":"Jaime lannister ",      
}, 
];
var random=Random();

void _inspireMe(){
  setState(() {
  currentIndex=random.nextInt(quotes.length);
});

}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "random_quote_generator",
          style: const TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.teal,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      '"${quotes[currentIndex]["quote"]!}"',
                      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
          
               const SizedBox(height: 10),
          
                Padding(
                  padding: const EdgeInsets.all(20.0),
                      child: Text(
                        "- ${quotes[currentIndex]["author"]!}",
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
          
                ),
                const SizedBox(height: 40),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.teal,foregroundColor: Colors.white),
                  
                        // ignore: avoid_print
                        onPressed: _inspireMe,
                         child: Text("Inspire Me"),
                        ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
