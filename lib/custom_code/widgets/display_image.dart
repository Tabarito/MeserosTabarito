// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class DisplayImage extends StatefulWidget {
  const DisplayImage({
    Key? key,
    this.width,
    this.height,
    this.image,
  }) : super(key: key);

  final double? width;
  final double? height;
  final FFUploadedFile? image;

  @override
  _DisplayImageState createState() => _DisplayImageState();
}

class _DisplayImageState extends State<DisplayImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      child: widget.image != null
          ? Image.memory(widget.image!.bytes!)
          : const SizedBox.shrink(),
    );
  }
}
