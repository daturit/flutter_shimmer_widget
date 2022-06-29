import 'package:flutter/material.dart';
import 'package:flutter_shimmer_widget/flutter_shimmer_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
