// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'webgl1.dart';
import 'webxr.dart';

typedef XRDepthUsage = String;
typedef XRDepthDataFormat = String;
extension type XRDepthStateInit._(JSObject _) implements JSObject {
  external factory XRDepthStateInit({
    required JSArray<JSString> usagePreference,
    required JSArray<JSString> dataFormatPreference,
  });

  external set usagePreference(JSArray<JSString> value);
  external JSArray<JSString> get usagePreference;
  external set dataFormatPreference(JSArray<JSString> value);
  external JSArray<JSString> get dataFormatPreference;
}
extension type XRDepthInformation._(JSObject _) implements JSObject {
  external int get width;
  external int get height;
  external XRRigidTransform get normDepthBufferFromNormView;
  external num get rawValueToMeters;
}
extension type XRCPUDepthInformation._(JSObject _)
    implements XRDepthInformation, JSObject {
  external num getDepthInMeters(
    num x,
    num y,
  );
  external JSArrayBuffer get data;
}
extension type XRWebGLDepthInformation._(JSObject _)
    implements XRDepthInformation, JSObject {
  external WebGLTexture get texture;
}
