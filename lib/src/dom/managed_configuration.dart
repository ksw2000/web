// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';

@JS('NavigatorManagedData')
@staticInterop
class NavigatorManagedData implements EventTarget {}

extension NavigatorManagedDataExtension on NavigatorManagedData {
  external JSPromise getManagedConfiguration(JSArray keys);
  external set onmanagedconfigurationchange(EventHandler value);
  external EventHandler get onmanagedconfigurationchange;
}