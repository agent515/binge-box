import 'package:flutter/material.dart';

/// A small widget that listens to a stream of online/offline boolean values
/// and displays a banner when the app is offline.
class OfflineBanner extends StatelessWidget {
  const OfflineBanner({
    super.key,
    required this.isOnlineStream,
    this.checkInterval = const Duration(seconds: 5),
  });

  /// External stream to drive the banner. True = online, False = offline
  final Stream<bool> isOnlineStream;

  /// Optional local checker interval if someone chooses to use
  /// [OfflineBanner.defaultConnectivityStream]. Not used by the widget itself
  /// but documented here for convenience.
  final Duration checkInterval;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
      stream: isOnlineStream,
      initialData: true,
      builder: (context, snapshot) {
        final online = snapshot.data ?? true;
        if (online) return const SizedBox.shrink();

        return Material(
          color: Colors.red.shade700,
          child: SafeArea(
            bottom: false,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              child: Row(
                children: const [
                  Icon(Icons.cloud_off, color: Colors.white, size: 18),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'You are offline — showing cached content',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
