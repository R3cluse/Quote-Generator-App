import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var rnd = new Random();
  String quoteDisplay = 'Quote';
  List<List> arrayQuote = [
    [
      '"Believe It!"',
      '"I will never go back on my Word. That is my Nindo: my ninja way!!"',
      '"I am strong because I have people to protect."',
      '"Failing doesn’t give you a reason to give up as long as you believe."',
      '"People who continue to put their lives on the line to defend their faith become heroes and continue to exist on in legend."',
    ],
    [
      '"I tend to keep talking until somebody stops me."',
      '"I’m not great at the advice. Can I interest you in a sarcastic comment?"',
      '"What must it be like not to be crippled by fear and self-loathing?"',
      '"When I was younger, I started using humor as a defense mechanism."',
      '"If I were a guy and…did I just say ‘if I were a guy?"',
    ],
    [
      '"I am more critical of the films I make than anyone else."',
      '"Nope, I do not enjoy work generally. Not because I am lazy; it is just all so stressful and worrying."',
      '"It is not easy to take a sit-com and turn it into a feature."',
      '"It is a bit disconcerting being treated like Madonna."',
      '"I consider myself more of a visual comedian than a physical one."',
    ],
    [
      '"My gran could do better! And she’s dead!"',
      '"This lamb is so undercooked, it’s following Mary to school!"',
      '"This pizza is so disgusting, if you take it to Italy you’ll get arrested."',
      '"You put so much ginger in this, it’s a Weasley."',
      '"You don’t come into cooking to get rich."',
    ],
    [
      '"Bazinga!"',
      '"Well, that’s no Reason to cry. One cries because one is sad."',
      '"A neutron walks into a bar and asks how much for a drink. The bartender replies: For you, no charge"',
      '"I am not crazy. My mother had me tested"',
      '"While my brother was getting an STD, I was getting a Ph.D. Penicillin cannot take this away."',
    ],
  ];
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quote Generator App'),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        child: ListView(
          children: [
            ExpansionTile(
              title: Text("Naruto Uzumaki"),
              children: [
                Align(
                  child: ElevatedButton(
                    child: Text('Sample Quote'),
                    onPressed: () {
                      setState(() {
                        int selector = rnd.nextInt(arrayQuote.length);
                        quoteDisplay = arrayQuote[0][selector];
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                    ),
                  ),
                )
              ],
            ),
            ExpansionTile(
              title: Text("Chandler Bing"),
              children: [
                Align(
                  child: ElevatedButton(
                    child: Text('Sample Quote'),
                    onPressed: () {
                      setState(() {
                        int selector = rnd.nextInt(arrayQuote.length);
                        quoteDisplay = arrayQuote[1][selector];
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                    ),
                  ),
                )
              ],
            ),
            ExpansionTile(
              title: Text("Rowan Atkinson"),
              children: [
                Align(
                  child: ElevatedButton(
                    child: Text('Sample Quote'),
                    onPressed: () {
                      setState(() {
                        int selector = rnd.nextInt(arrayQuote.length);
                        quoteDisplay = arrayQuote[2][selector];
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                    ),
                  ),
                )
              ],
            ),
            ExpansionTile(
              title: Text("Gordon Ramsay"),
              children: [
                Align(
                  child: ElevatedButton(
                    child: Text('Sample Quote'),
                    onPressed: () {
                      setState(() {
                        int selector = rnd.nextInt(arrayQuote.length);
                        quoteDisplay = arrayQuote[3][selector];
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                    ),
                  ),
                )
              ],
            ),
            ExpansionTile(
              title: Text("Sheldon Cooper"),
              children: [
                Align(
                  child: ElevatedButton(
                    child: Text('Get Quote'),
                    onPressed: () {
                      setState(() {
                        int selector = rnd.nextInt(arrayQuote.length);
                        quoteDisplay = arrayQuote[4][selector];
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                    ),
                  ),
                )
              ],
            ),
            Card(
              child: ListTile(
                title: Center(child: Text(quoteDisplay)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

