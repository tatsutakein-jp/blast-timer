import 'package:core_model/src/config/update_version.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'remote_config.freezed.dart';

part 'remote_config.g.dart';

@Riverpod(keepAlive: true)
RemoteConfig remoteConfig(RemoteConfigRef ref) {
  throw UnimplementedError('remoteConfig');
}

/// RemoteConfig
///
/// {@category Model}
@freezed
class RemoteConfig with _$RemoteConfig {
  const factory RemoteConfig({
    required UpdateVersion updateVersion,
  }) = _RemoteConfig;
}

/// FakeRemoteConfig
const fakeRemoteConfig = RemoteConfig(
  updateVersion: fakeUpdateVersion,
);
