import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdaptiveTextButton extends StatelessWidget {
  final String text;
  final VoidCallback datePickerFunction;

  const AdaptiveTextButton(this.text, this.datePickerFunction, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(child: Text(text), onPressed: datePickerFunction)
        : TextButton(onPressed: datePickerFunction, child: Text(text));
  }
}
