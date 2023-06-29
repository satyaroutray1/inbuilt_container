<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->
Fancy Containers

Inbuilt container is a custom container which can be used in your Flutter app.
Installation

    Add the latest version of package to your pubspec.yaml (and rundart pub get):

dependencies:
fancy_containers: ^0.0.1

    Import the package and use it in your Flutter App.

import 'package:inbuilt_container/inbuilt_container.dart';

Example

There are a number of properties that you can modify:

    height
    width
    background color
    boarder radius
    margin
    padding
    widget

Code
```dart
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
```