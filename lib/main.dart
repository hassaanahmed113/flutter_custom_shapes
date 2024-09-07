import 'dart:math';

import 'package:custom_shape_flutter/clipper.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Custom Shape'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ClipPath(
        clipper: WaveClipper(),
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          child: Image.asset(
            'assets/images/rain.jpeg',
            fit: BoxFit.cover,
          ),
        ),
      ),

      // body: Stack(
      //   children: [
      //     ClipPath(
      //         clipper: TriangleClipperHalf(),
      //         child: SizedBox(
      //           width: MediaQuery.sizeOf(context).width,
      //           height: MediaQuery.sizeOf(context).height,
      //           child: Image.asset(
      //             'assets/images/rain.jpeg',
      //             fit: BoxFit.cover,
      //           ),
      //         )),
      //     ClipPath(
      //         clipper: TriangleClipper(),
      //         child: SizedBox(
      //           width: MediaQuery.sizeOf(context).width,
      //           height: MediaQuery.sizeOf(context).height,
      //           child: Image.asset(
      //             'assets/images/sunny-day.jpg',
      //             fit: BoxFit.cover,
      //           ),
      //         )),
      //   ],
      // ),
    );
  }
}
