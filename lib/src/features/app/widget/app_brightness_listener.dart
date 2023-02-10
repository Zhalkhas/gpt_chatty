import 'package:flutter/material.dart';

class AppBrightnessListener extends StatefulWidget {
  final Widget Function(BuildContext context, Brightness brightness) builder;
  const AppBrightnessListener({
    Key? key,
    required this.builder,
  }) : super(key: key);

  @override
  State<AppBrightnessListener> createState() => _AppBrightnessListenerState();
}

class _AppBrightnessListenerState extends State<AppBrightnessListener>
    with WidgetsBindingObserver {
  Brightness _brightness = WidgetsBinding.instance.window.platformBrightness;

  @override
  void initState() {
    super.initState();
    _brightness = WidgetsBinding.instance.window.platformBrightness;
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangePlatformBrightness() {
    setState(() {
      _brightness = WidgetsBinding.instance.window.platformBrightness;
    });
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, _brightness);
  }
}
