import 'dart:async';
import 'dart:io';

import 'package:injectable/injectable.dart';

/// A lightweight connectivity service moved into the injectable modules
/// directory. This file provides the concrete service and a module that
/// registers it as a lazy singleton for the service locator.
class ConnectivityService {
  ConnectivityService() {
    _controller = StreamController<bool>.broadcast(onListen: () {
      _controller.add(_lastOnline ?? true);
    });
    _startLoop();
  }

  late final StreamController<bool> _controller;
  bool? _lastOnline;
  Timer? _timer;

  Stream<bool> get onStatusChange => _controller.stream;

  Future<bool> checkOnce(
      {Duration timeout = const Duration(seconds: 4)}) async {
    try {
      final result =
          await InternetAddress.lookup('example.com').timeout(timeout);
      final online = result.isNotEmpty && result[0].rawAddress.isNotEmpty;
      _lastOnline = online;
      return online;
    } catch (_) {
      _lastOnline = false;
      return false;
    }
  }

  void _startLoop({Duration interval = const Duration(seconds: 5)}) {
    checkOnce();
    _timer = Timer.periodic(interval, (_) async {
      final online = await checkOnce();
      if (_lastOnline == null || _lastOnline != online) {
        _controller.add(online);
      }
    });
  }

  void dispose() {
    _timer?.cancel();
    _controller.close();
  }
}

@module
abstract class ConnectivityModule {
  @lazySingleton
  ConnectivityService connectivityService() => ConnectivityService();
}
