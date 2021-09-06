import 'package:flutter/material.dart';

typedef SliverListBuilder = Widget Function({required int animatedIndex, required double animatedExtent});

class AnimatedSliverListWrapper extends StatefulWidget {
  AnimatedSliverListWrapper(
      {Key? key,
      required this.animatedIndex,
      required this.isAdding,
      required this.sliverListBuilder,
      required this.itemExtents})
    : 
    maxAnimatedExtent = itemExtents[animatedIndex],
    super(key: key);
  final int animatedIndex;
  final List<double> itemExtents;
  final bool isAdding;
  final SliverListBuilder sliverListBuilder;
  late double maxAnimatedExtent;
  @override
  _AnimatedSliverListWrapperState createState() =>
      _AnimatedSliverListWrapperState();
}

class _AnimatedSliverListWrapperState extends State<AnimatedSliverListWrapper> { 
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: widget.maxAnimatedExtent),
        duration: Duration(milliseconds: 800),
        builder: (BuildContext context, double animatedExtent, Widget? child) {
          return widget.sliverListBuilder(animatedIndex: widget.animatedIndex, animatedExtent: animatedExtent);
        });
  }
}
