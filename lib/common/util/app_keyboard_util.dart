import 'dart:async';

import 'package:flutter/cupertino.dart';

class AppKeyboardUtil {
  static void hide(BuildContext context) {
    FocusScope.of(context).unfocus();
    FocusScope.of(context).requestFocus(FocusNode());
  }

  static void show(BuildContext context, FocusNode node) {
    FocusScope.of(context).unfocus();
    Timer(const Duration(milliseconds: 1), () {
      FocusScope.of(context).requestFocus(node);
    });
  }
}

mixin KeyboardDetector<T extends StatefulWidget> on State<T> implements WidgetsBindingObserver {
  bool isKeyboardOn = false;
  final bool useDefaultKeyboardDetectorInit = true;
  Function(double)? _willShowKeyboard;
  Function()? _willHideKeyboard;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    if (useDefaultKeyboardDetectorInit) {
      initKeyboardDetector();
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    disposeKeyboardDetector();
    super.dispose();
  }

  @override
  void didChangeMetrics() {
    final bottomInset = View.of(context).viewInsets.bottom;

    if (bottomInset > 0 && !isKeyboardOn) {
      // Keyboard is showing
      if (_willShowKeyboard != null) {
        _willShowKeyboard!(bottomInset);
      }
      if (mounted) {
        setState(() {
          isKeyboardOn = true;
        });
      }
    } else if (bottomInset == 0 && isKeyboardOn) {
      // Keyboard is hiding
      if (_willHideKeyboard != null) {
        _willHideKeyboard!();
      }
      if (mounted) {
        setState(() {
          isKeyboardOn = false;
        });
      }
    }
  }

  initKeyboardDetector(
      {final Function(double)? willShowKeyboard, final Function()? willHideKeyboard}) {
    _willShowKeyboard = willShowKeyboard;
    _willHideKeyboard = willHideKeyboard;
  }

  disposeKeyboardDetector() {
    _willShowKeyboard = null;
    _willHideKeyboard = null;
  }
}
