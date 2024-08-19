import 'package:core_data/user_settings.dart';
import 'package:core_model/theme.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_stream_use_case.g.dart';

/// テーマのストリームを取得する ユースケース
@riverpod
Stream<Theme> themeStreamUseCase(ThemeStreamUseCaseRef ref) =>
    ref.watch(userSettingsRepositoryProvider).themeStream;
