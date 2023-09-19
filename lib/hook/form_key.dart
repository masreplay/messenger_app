import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

GlobalKey<FormState> useFormKey() =>
    useMemoized(GlobalKey<FormState>.new, const []);
