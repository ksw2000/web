// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'dom.dart';

extension type NamedFlowMap._(JSObject _) implements JSObject {}
extension type NamedFlow._(JSObject _) implements EventTarget, JSObject {
  external JSArray<Element> getRegions();
  external JSArray<Node> getContent();
  external JSArray<Element> getRegionsByContent(Node node);
  external String get name;
  external bool get overset;
  external int get firstEmptyRegionIndex;
}
