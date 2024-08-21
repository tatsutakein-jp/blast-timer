import 'dart:convert';
import 'dart:io';

import 'package:core_model/config.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';

final firebaseRemoteConfigProvider = remoteConfigProvider.overrideWith((ref) {
  final firebaseRemoteConfig = FirebaseRemoteConfig.instance;

  return RemoteConfig(
    updateVersion: _resolveUpdateVersion(firebaseRemoteConfig),
  );
});

UpdateVersion _resolveUpdateVersion(FirebaseRemoteConfig firebaseRemoteConfig) {
  if (!Platform.isAndroid && !Platform.isIOS) {
    return fakeRemoteConfig.updateVersion;
  }

  final appVersionsKey = switch (Platform.operatingSystem) {
    'android' => 'android_app_versions',
    'ios' => 'ios_app_versions',
    _ => throw UnimplementedError(),
  };

  final updateVersions = jsonDecode(
    firebaseRemoteConfig.getString(appVersionsKey),
  );
  return UpdateVersion(
    force: updateVersions['force'] as String,
    optional: updateVersions['optional'] as String,
  );
}
