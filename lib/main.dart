import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Lottery App')),
        ),
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Text('Lottery wining number is 4'),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 250,
              width: 300,
              decoration: BoxDecoration(
                  color: x == 4 ? Colors.teal : Colors.grey.withOpacity(.2),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: x == 4
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.done_all,
                            color: Colors.green,
                            size: 35,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Congratulation you have won the lottery, your number is $x\n',
                            textAlign: TextAlign.center,
                          )
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.error,
                            color: Colors.red,
                            size: 35,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Better luck next time your number is $x\ntry again',
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
              ),
            )
          ],
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {});
            x = random.nextInt(5);
          },
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }
}
