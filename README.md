# flutter_shimmer_widget

A package provides an easy way to add shimmer effect in Flutter project 

## Getting Started

## Animation
<p>
<img src="https://media.giphy.com/media/rKxuj8sFmaRE1G6zJm/giphy.gif?raw=true" align = "center" height = "650px">
</p>

## Example Project

There is a example project in the `example` folder. Check it out. Otherwise, keep reading to get up and running.

## Usage

**Custom Numbers**

```dart
import 'package:flutter/material.dart';
import 'package:flutter_shimmer_widget/flutter_shimmer_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Shimmer Widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Shimmer Widget'),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              CardPlaceHolderWithAvatar(),
              CardPlaceHolderWithAvatar(),

              CardPlaceHolderWithImage(
                height: 200,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: FlutterShimmnerLoadingWidget(
                  count: 3,
                  animate: true,
                  color: Colors.grey[200],
                ),
              ),
              SimpleTextPlaceholder(),

            ],
          ),
        ),
      ),
    );
  }
}



```

This project is a starting point for a Dart
[package](https://flutter.dev/developing-packages/),
a library module containing code that can be shared easily across
multiple Flutter or Dart projects.

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

