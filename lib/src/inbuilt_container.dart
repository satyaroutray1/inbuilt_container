import 'package:flutter/material.dart';

class InbuiltContainer extends StatefulWidget {
  final double? height;
  final double? width;

  final Color? bgColor;
  final Color? bgBlurColor;

  final double? boarderRadius;
  final double? boarderBlurRadius;
  final double? margin;
  final double? padding;

  final Widget? child;

  const InbuiltContainer({super.key,
    this.height,
    this.width,
    this.bgColor,
    this.bgBlurColor,
    this.boarderRadius,
    this.boarderBlurRadius,
    this.margin,
    this.padding,
    this.child,
  });
  @override
  State<InbuiltContainer> createState() => _InbuiltContainerState();
}

class _InbuiltContainerState extends State<InbuiltContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widget.boarderRadius ?? 15),
          color: widget.bgColor ?? Colors.white,
          boxShadow: [
            BoxShadow(
                color: widget.bgBlurColor ?? Colors.greenAccent,
                blurRadius: widget.boarderBlurRadius ?? 2)
          ]),
      height: widget.height ?? MediaQuery.of(context).size.width/3,
      width: widget.width ?? MediaQuery.of(context).size.width,
      margin: EdgeInsets.all(widget.margin ?? 20),
      padding: EdgeInsets.all(widget.padding ?? 10),
      child: Center(child: widget.child ?? Container()),
    );
  }
}
