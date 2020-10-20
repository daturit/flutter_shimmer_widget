import 'package:flutter/material.dart';

import 'flutter_shimmer_loading_widget.dart';

class SimpleTextPlaceholder extends StatelessWidget {
  final TextAlign align;
  final double height;

  SimpleTextPlaceholder({this.align = TextAlign.left, this.height = 150});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: height,
      width: MediaQuery.of(context).size.width,
      child: FlutterShimmnerLoadingWidget(
        count: 3,
        align: align,
        animate: true,
        color: Colors.grey[200],
      ),
    );
  }
}

class SimpleTextPlaceholderHistory extends StatelessWidget {
  final TextAlign align;
  final double height;

  SimpleTextPlaceholderHistory({this.align = TextAlign.left, this.height = 60});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: height,
      width: MediaQuery.of(context).size.width,
      child: FlutterShimmnerLoadingWidget(
        count: 1,
        align: align,
        animate: true,
        color: Colors.grey[200],
      ),
    );
  }
}

class CardPlaceHolderWithAvatar extends StatelessWidget {
  final double height;

  CardPlaceHolderWithAvatar({this.height = 150});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        child: Row(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(right: 16),
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(35)),
                color: Colors.grey.withOpacity(.6),
              ),
              child: const Center(
                child: Icon(
                  Icons.photo_size_select_actual,
                  color: Colors.white,
                  size: 35,
                ),
              ),
            ),
            Expanded(
              child: FlutterShimmnerLoadingWidget(
                count: 3,
                animate: true,
                color: Colors.grey[200],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardPlaceHolderWithImage extends StatelessWidget {
  final int countText;
  final double height;

  CardPlaceHolderWithImage({this.height = 200, this.countText = 0});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(right: 0),
              width: MediaQuery.of(context).size.width,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.grey[200].withOpacity(.6),
              ),
            ),
            Expanded(
              child: FlutterShimmnerLoadingWidget(
                count: countText,
                animate: true,
                color: Colors.grey[200],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
