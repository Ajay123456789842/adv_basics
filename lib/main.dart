
import 'package:flutter/material.dart';
import 'package:adv_basics/quiz_state.dart';
import 'package:device_preview/device_preview.dart';

void main(){
  runApp(
    DevicePreview(
    enabled: true,
    builder: (context) =>const Quiz(), // Wrap your app
  ),
  );
}