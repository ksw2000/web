// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';
import 'html.dart';
import 'websockets.dart';

typedef PresentationConnectionState = JSString;
typedef PresentationConnectionCloseReason = JSString;

@JS('Presentation')
@staticInterop
class Presentation {}

extension PresentationExtension on Presentation {
  external set defaultRequest(PresentationRequest? value);
  external PresentationRequest? get defaultRequest;
  external PresentationReceiver? get receiver;
}

@JS('PresentationRequest')
@staticInterop
class PresentationRequest implements EventTarget {
  external factory PresentationRequest(JSAny urlOrUrls);
}

extension PresentationRequestExtension on PresentationRequest {
  external JSPromise start();
  external JSPromise reconnect(JSString presentationId);
  external JSPromise getAvailability();
  external set onconnectionavailable(EventHandler value);
  external EventHandler get onconnectionavailable;
}

@JS('PresentationAvailability')
@staticInterop
class PresentationAvailability implements EventTarget {}

extension PresentationAvailabilityExtension on PresentationAvailability {
  external JSBoolean get value;
  external set onchange(EventHandler value);
  external EventHandler get onchange;
}

@JS('PresentationConnectionAvailableEvent')
@staticInterop
class PresentationConnectionAvailableEvent implements Event {
  external factory PresentationConnectionAvailableEvent(
    JSString type,
    PresentationConnectionAvailableEventInit eventInitDict,
  );
}

extension PresentationConnectionAvailableEventExtension
    on PresentationConnectionAvailableEvent {
  external PresentationConnection get connection;
}

@JS()
@staticInterop
@anonymous
class PresentationConnectionAvailableEventInit implements EventInit {
  external factory PresentationConnectionAvailableEventInit(
      {required PresentationConnection connection});
}

extension PresentationConnectionAvailableEventInitExtension
    on PresentationConnectionAvailableEventInit {
  external set connection(PresentationConnection value);
  external PresentationConnection get connection;
}

@JS('PresentationConnection')
@staticInterop
class PresentationConnection implements EventTarget {}

extension PresentationConnectionExtension on PresentationConnection {
  external JSVoid close();
  external JSVoid terminate();
  external JSVoid send(JSAny dataOrMessage);
  external JSString get id;
  external JSString get url;
  external PresentationConnectionState get state;
  external set onconnect(EventHandler value);
  external EventHandler get onconnect;
  external set onclose(EventHandler value);
  external EventHandler get onclose;
  external set onterminate(EventHandler value);
  external EventHandler get onterminate;
  external set binaryType(BinaryType value);
  external BinaryType get binaryType;
  external set onmessage(EventHandler value);
  external EventHandler get onmessage;
}

@JS('PresentationConnectionCloseEvent')
@staticInterop
class PresentationConnectionCloseEvent implements Event {
  external factory PresentationConnectionCloseEvent(
    JSString type,
    PresentationConnectionCloseEventInit eventInitDict,
  );
}

extension PresentationConnectionCloseEventExtension
    on PresentationConnectionCloseEvent {
  external PresentationConnectionCloseReason get reason;
  external JSString get message;
}

@JS()
@staticInterop
@anonymous
class PresentationConnectionCloseEventInit implements EventInit {
  external factory PresentationConnectionCloseEventInit({
    required PresentationConnectionCloseReason reason,
    JSString message = '',
  });
}

extension PresentationConnectionCloseEventInitExtension
    on PresentationConnectionCloseEventInit {
  external set reason(PresentationConnectionCloseReason value);
  external PresentationConnectionCloseReason get reason;
  external set message(JSString value);
  external JSString get message;
}

@JS('PresentationReceiver')
@staticInterop
class PresentationReceiver {}

extension PresentationReceiverExtension on PresentationReceiver {
  external JSPromise get connectionList;
}

@JS('PresentationConnectionList')
@staticInterop
class PresentationConnectionList implements EventTarget {}

extension PresentationConnectionListExtension on PresentationConnectionList {
  external JSArray get connections;
  external set onconnectionavailable(EventHandler value);
  external EventHandler get onconnectionavailable;
}
