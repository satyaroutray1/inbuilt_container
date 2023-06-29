import 'package:flutter/material.dart';

class CustomContainer extends StatefulWidget {
  double? height;
  double? width;

  Color? bgColor;
  Color? bgBlurColor;

  double? boarderRadius;
  double? boarderBlurRadius;
  double? margin;
  double? padding;

  Widget? customWidget;

  CustomContainer({
    this.height,
    this.width,
    this.bgColor,
    this.bgBlurColor,
    this.boarderRadius,
    this.boarderBlurRadius,
    this.margin,
    this.padding,
    this.customWidget,
  });
  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
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
      height: widget.height ?? MediaQuery.of(context).size.width/2,
      width: widget.width ?? MediaQuery.of(context).size.width,
      margin: EdgeInsets.all(widget.margin ?? 10),
      padding: EdgeInsets.all(widget.padding ?? 10),
      child: widget.customWidget ?? Container(),
    );
  }
}
