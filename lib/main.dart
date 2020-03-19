import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:material/android/material-app.dart';
import 'ios/cuppertino-app.dart';

void main() =>
    Platform.isIOS ? runApp(MyCupertinoApp()) : runApp(MyMaterialApp());