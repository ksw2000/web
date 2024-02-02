// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'html.dart';

typedef FencedFrameConfigSize = JSAny;
typedef FencedFrameConfigURL = String;
typedef UrnOrConfig = JSAny;
typedef ReportEventType = JSAny;
typedef OpaqueProperty = String;
typedef FenceReportingDestination = String;
extension type HTMLFencedFrameElement._(JSObject _)
    implements HTMLElement, JSObject {
  external factory HTMLFencedFrameElement();

  external set config(FencedFrameConfig? value);
  external FencedFrameConfig? get config;
  external set width(String value);
  external String get width;
  external set height(String value);
  external String get height;
  external set allow(String value);
  external String get allow;
}
extension type FencedFrameConfig._(JSObject _) implements JSObject {
  external void setSharedStorageContext(String contextString);
  external FencedFrameConfigSize? get containerWidth;
  external FencedFrameConfigSize? get containerHeight;
  external FencedFrameConfigSize? get contentWidth;
  external FencedFrameConfigSize? get contentHeight;
}
extension type FenceEvent._(JSObject _) implements JSObject {
  external factory FenceEvent({
    String eventType,
    String eventData,
    JSArray<JSString> destination,
    bool once,
    String destinationURL,
  });

  external set eventType(String value);
  external String get eventType;
  external set eventData(String value);
  external String get eventData;
  external set destination(JSArray<JSString> value);
  external JSArray<JSString> get destination;
  external set once(bool value);
  external bool get once;
  external set destinationURL(String value);
  external String get destinationURL;
}
extension type Fence._(JSObject _) implements JSObject {
  external void reportEvent([ReportEventType event]);
  external void setReportEventDataForAutomaticBeacons([FenceEvent event]);
  external JSArray<FencedFrameConfig> getNestedConfigs();
}
